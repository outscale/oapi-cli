#ifndef MAIN_HELPER_H_
#define MAIN_HELPER_H_


struct ptr_array {
	void **ptrs;
	int l;
	int size;
};


#define TRY_ALLOC_AT(s, a,pa,i,size)					\
	do {								\
		int old_i = s->nb_##a;					\
		if (s->nb_##a <= i) {					\
			int sz = i + 1;					\
			int oidx = ptr_array_get_idx(pa, s->a);		\
			s->a = realloc(s->a, sz * size);		\
			if (oidx < 0)					\
				ptr_array_append(pa, s->a);		\
			else {						\
				pa->ptrs[oidx] = s->a;			\
				s->a = pa->ptrs[oidx];			\
			}						\
			memset(s->a + old_i, 0, size * (sz - old_i));	\
			s->nb_##a = sz;					\
		}							\
	} while (0)

#define SET_NEXT(a,v,pa) do {						\
		int cnt;						\
		if (!a) {						\
			ptr_array_append(pa, a);			\
			a = calloc(64, sizeof(v));			\
		}							\
		for (cnt = 0; a[cnt]; ++cnt);				\
		if (cnt && (cnt % 63) == 0) {				\
			int idx = ptr_array_get_idx(pa, a);		\
			pa->ptrs[idx] = realloc(a, (cnt + 1 + 64) * sizeof(v));	\
			a = pa->ptrs[idx];				\
			memset(a + cnt + 1, 0, 64 * sizeof(v));		\
		}							\
		a[cnt] = v;						\
	} while (0)

static inline int ptr_array_append(struct ptr_array *pa, void *ptr)
{
	if (!(pa->l & 63)) { /* need grow up */
		pa->size += 64;
		pa->ptrs = realloc(pa->ptrs, pa->size);
		if (!pa->ptrs)
			return -1;
	}
	pa->ptrs[pa->l++] = ptr;
	return 0;
}

static inline int ptr_array_get_idx(struct ptr_array *pa, void *ptr)
{
	for (int i = 0; i < pa->l; ++i)
		if (pa->ptrs[i] == ptr)
			return i;
	return -1;
}

static inline int ptr_array_free_all(struct ptr_array *pa)
{
	if (pa->ptrs) {
		for (int i = 0; i < pa->l; ++i) {
			free(pa->ptrs[i]);
		}
		free(pa->ptrs);
		pa->ptrs = NULL;
		pa->size = 0;
		pa->l = 0;
	}
}


#endif /* MAIN_HELPER_H_ */
