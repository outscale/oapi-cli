#/usr/bin/env bash

UpdateVpnConnection() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --DryRun --VirtualGatewayId --VpnConnectionId --VpnOptions.Phase2Options.PreSharedKey  --VpnOptions.TunnelInsideIpRange" -- ${cur}))
}
UpdateVolume() {
    COMPREPLY=($(compgen -W " --DryRun --Iops --Size --VolumeId --VolumeType" -- ${cur}))
}
UpdateVmTemplate() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Tags --VmTemplateId --VmTemplateName" -- ${cur}))
}
UpdateVmGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Tags --VmGroupId --VmGroupName --VmTemplateId" -- ${cur}))
}
UpdateVm() {
    COMPREPLY=($(compgen -W " --BlockDeviceMappings --BsuOptimized --DeletionProtection --DryRun --IsSourceDestChecked --KeypairName --NestedVirtualization --Performance --SecurityGroupIds --UserData --VmId --VmInitiatedShutdownBehavior --VmType" -- ${cur}))
}
UpdateUser() {
    COMPREPLY=($(compgen -W " --DryRun --NewPath --NewUserName --UserName" -- ${cur}))
}
UpdateSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --MapPublicIpOnLaunch --SubnetId" -- ${cur}))
}
UpdateSnapshot() {
    COMPREPLY=($(compgen -W " --DryRun --PermissionsToCreateVolume.Additions.AccountIds --PermissionsToCreateVolume.Additions.GlobalPermission  --PermissionsToCreateVolume.Removals.AccountIds --PermissionsToCreateVolume.Removals.GlobalPermission  --SnapshotId" -- ${cur}))
}
UpdateServerCertificate() {
    COMPREPLY=($(compgen -W " --DryRun --Name --NewName --NewPath" -- ${cur}))
}
UpdateRouteTableLink() {
    COMPREPLY=($(compgen -W " --DryRun --LinkRouteTableId --RouteTableId" -- ${cur}))
}
UpdateRoutePropagation() {
    COMPREPLY=($(compgen -W " --DryRun --Enable --RouteTableId --VirtualGatewayId" -- ${cur}))
}
UpdateRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --GatewayId --NatServiceId --NetPeeringId --NicId --RouteTableId --VmId" -- ${cur}))
}
UpdateNic() {
    COMPREPLY=($(compgen -W " --Description --DryRun --LinkNic.DeleteOnVmDeletion --LinkNic.LinkNicId --NicId --SecurityGroupIds" -- ${cur}))
}
UpdateNetAccessPoint() {
    COMPREPLY=($(compgen -W " --AddRouteTableIds --DryRun --NetAccessPointId --RemoveRouteTableIds" -- ${cur}))
}
UpdateNet() {
    COMPREPLY=($(compgen -W " --DhcpOptionsSetId --DryRun --NetId" -- ${cur}))
}
UpdateLoadBalancer() {
    COMPREPLY=($(compgen -W " --AccessLog.IsEnabled --AccessLog.OsuBucketName --AccessLog.OsuBucketPrefix --AccessLog.PublicationInterval --DryRun --HealthCheck.CheckInterval --HealthCheck.HealthyThreshold --HealthCheck.Path --HealthCheck.Port --HealthCheck.Protocol --HealthCheck.Timeout --HealthCheck.UnhealthyThreshold --LoadBalancerName --LoadBalancerPort --PolicyNames --PublicIp --SecuredCookies --SecurityGroups --ServerCertificateId" -- ${cur}))
}
UpdateListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --HostPattern --ListenerRuleName --PathPattern" -- ${cur}))
}
UpdateImage() {
    COMPREPLY=($(compgen -W " --DryRun --ImageId --PermissionsToLaunch.Additions.AccountIds --PermissionsToLaunch.Additions.GlobalPermission  --PermissionsToLaunch.Removals.AccountIds --PermissionsToLaunch.Removals.GlobalPermission " -- ${cur}))
}
UpdateFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DeleteOnVmDeletion --DryRun --FlexibleGpuId" -- ${cur}))
}
UpdateDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkInterfaceId --DryRun --Mtu" -- ${cur}))
}
UpdateDedicatedGroup() {
    COMPREPLY=($(compgen -W " --DedicatedGroupId --DryRun --Name" -- ${cur}))
}
UpdateCa() {
    COMPREPLY=($(compgen -W " --CaId --Description --DryRun" -- ${cur}))
}
UpdateApiAccessRule() {
    COMPREPLY=($(compgen -W " --ApiAccessRuleId --CaIds --Cns --Description --DryRun --IpRanges" -- ${cur}))
}
UpdateApiAccessPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --MaxAccessKeyExpirationSeconds --RequireTrustedEnv" -- ${cur}))
}
UpdateAccount() {
    COMPREPLY=($(compgen -W " --AdditionalEmails --City --CompanyName --Country --DryRun --Email --FirstName --JobTitle --LastName --MobileNumber --PhoneNumber --StateProvince --VatNumber --ZipCode" -- ${cur}))
}
UpdateAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun --ExpirationDate --State --UserName" -- ${cur}))
}
UnlinkVolume() {
    COMPREPLY=($(compgen -W " --DryRun --ForceUnlink --VolumeId" -- ${cur}))
}
UnlinkVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --VirtualGatewayId" -- ${cur}))
}
UnlinkRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --LinkRouteTableId" -- ${cur}))
}
UnlinkPublicIp() {
    COMPREPLY=($(compgen -W " --DryRun --LinkPublicIpId --PublicIp" -- ${cur}))
}
UnlinkPrivateIps() {
    COMPREPLY=($(compgen -W " --DryRun --NicId --PrivateIps" -- ${cur}))
}
UnlinkPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserName" -- ${cur}))
}
UnlinkNic() {
    COMPREPLY=($(compgen -W " --DryRun --LinkNicId" -- ${cur}))
}
UnlinkLoadBalancerBackendMachines() {
    COMPREPLY=($(compgen -W " --BackendIps --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
UnlinkInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId --NetId" -- ${cur}))
}
UnlinkFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId" -- ${cur}))
}
StopVms() {
    COMPREPLY=($(compgen -W " --DryRun --ForceStop --VmIds" -- ${cur}))
}
StartVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
SetDefaultPolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
ScaleUpVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmAddition --VmGroupId" -- ${cur}))
}
ScaleDownVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmGroupId --VmSubtraction" -- ${cur}))
}
RejectNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}
RegisterVmsInLoadBalancer() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
RebootVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
ReadVpnConnections() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BgpAsns --Filters.ClientGatewayIds --Filters.ConnectionTypes --Filters.RouteDestinationIpRanges --Filters.States --Filters.StaticRoutesOnly --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualGatewayIds --Filters.VpnConnectionIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVolumes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CreationDates --Filters.LinkVolumeDeleteOnVmDeletion --Filters.LinkVolumeDeviceNames --Filters.LinkVolumeLinkDates --Filters.LinkVolumeLinkStates --Filters.LinkVolumeVmIds --Filters.SnapshotIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VolumeIds --Filters.VolumeSizes --Filters.VolumeStates --Filters.VolumeTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVmsState() {
    COMPREPLY=($(compgen -W " --AllVms --DryRun --Filters.MaintenanceEventCodes --Filters.MaintenanceEventDescriptions --Filters.MaintenanceEventsNotAfter --Filters.MaintenanceEventsNotBefore --Filters.SubregionNames --Filters.VmIds --Filters.VmStates" -- ${cur}))
}
ReadVmsHealth() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
ReadVms() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Architectures --Filters.BlockDeviceMappingDeleteOnVmDeletion --Filters.BlockDeviceMappingDeviceNames --Filters.BlockDeviceMappingLinkDates --Filters.BlockDeviceMappingStates --Filters.BlockDeviceMappingVolumeIds --Filters.ClientTokens --Filters.CreationDates --Filters.ImageIds --Filters.IsSourceDestChecked --Filters.KeypairNames --Filters.LaunchNumbers --Filters.Lifecycles --Filters.NetIds --Filters.NicAccountIds --Filters.NicDescriptions --Filters.NicIsSourceDestChecked --Filters.NicLinkNicDeleteOnVmDeletion --Filters.NicLinkNicDeviceNumbers --Filters.NicLinkNicLinkNicDates --Filters.NicLinkNicLinkNicIds --Filters.NicLinkNicStates --Filters.NicLinkNicVmAccountIds --Filters.NicLinkNicVmIds --Filters.NicLinkPublicIpAccountIds --Filters.NicLinkPublicIpLinkPublicIpIds --Filters.NicLinkPublicIpPublicIpIds --Filters.NicLinkPublicIpPublicIps --Filters.NicMacAddresses --Filters.NicNetIds --Filters.NicNicIds --Filters.NicPrivateIpsLinkPublicIpAccountIds --Filters.NicPrivateIpsLinkPublicIpIds --Filters.NicPrivateIpsPrimaryIp --Filters.NicPrivateIpsPrivateIps --Filters.NicSecurityGroupIds --Filters.NicSecurityGroupNames --Filters.NicStates --Filters.NicSubnetIds --Filters.NicSubregionNames --Filters.Platforms --Filters.PrivateIps --Filters.ProductCodes --Filters.PublicIps --Filters.ReservationIds --Filters.RootDeviceNames --Filters.RootDeviceTypes --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.StateReasonCodes --Filters.StateReasonMessages --Filters.StateReasons --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.Tenancies --Filters.VmIds --Filters.VmSecurityGroupIds --Filters.VmSecurityGroupNames --Filters.VmStateCodes --Filters.VmStateNames --Filters.VmTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVmTypes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BsuOptimized --Filters.EphemeralsTypes --Filters.Eths --Filters.Gpus --Filters.MemorySizes --Filters.VcoreCounts --Filters.VmTypeNames --Filters.VolumeCounts --Filters.VolumeSizes" -- ${cur}))
}
ReadVmTemplates() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CpuCores --Filters.CpuGenerations --Filters.CpuPerformances --Filters.Descriptions --Filters.ImageIds --Filters.KeypairNames --Filters.Rams --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmTemplateIds --Filters.VmTemplateNames" -- ${cur}))
}
ReadVmGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.SecurityGroupIds --Filters.SubnetIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmCounts --Filters.VmGroupIds --Filters.VmGroupNames --Filters.VmTemplateIds" -- ${cur}))
}
ReadVirtualGateways() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ConnectionTypes --Filters.LinkNetIds --Filters.LinkStates --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualGatewayIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadUsers() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadTags() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Keys --Filters.ResourceIds --Filters.ResourceTypes --Filters.Values" -- ${cur}))
}
ReadSubregions() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.RegionNames --Filters.States --Filters.SubregionNames" -- ${cur}))
}
ReadSubnets() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AvailableIpsCounts --Filters.IpRanges --Filters.NetIds --Filters.States --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadSnapshots() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccountAliases --Filters.AccountIds --Filters.Descriptions --Filters.FromCreationDate --Filters.PermissionsToCreateVolumeAccountIds --Filters.PermissionsToCreateVolumeGlobalPermission --Filters.Progresses --Filters.SnapshotIds --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.ToCreationDate --Filters.VolumeIds --Filters.VolumeSizes" -- ${cur}))
}
ReadSnapshotExportTasks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.TaskIds" -- ${cur}))
}
ReadServerCertificates() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Paths" -- ${cur}))
}
ReadSecurityGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.InboundRuleAccountIds --Filters.InboundRuleFromPortRanges --Filters.InboundRuleIpRanges --Filters.InboundRuleProtocols --Filters.InboundRuleSecurityGroupIds --Filters.InboundRuleSecurityGroupNames --Filters.InboundRuleToPortRanges --Filters.NetIds --Filters.OutboundRuleAccountIds --Filters.OutboundRuleFromPortRanges --Filters.OutboundRuleIpRanges --Filters.OutboundRuleProtocols --Filters.OutboundRuleSecurityGroupIds --Filters.OutboundRuleSecurityGroupNames --Filters.OutboundRuleToPortRanges --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadSecretAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun" -- ${cur}))
}
ReadRouteTables() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LinkRouteTableIds --Filters.LinkRouteTableLinkRouteTableIds --Filters.LinkRouteTableMain --Filters.LinkSubnetIds --Filters.NetIds --Filters.RouteCreationMethods --Filters.RouteDestinationIpRanges --Filters.RouteDestinationServiceIds --Filters.RouteGatewayIds --Filters.RouteNatServiceIds --Filters.RouteNetPeeringIds --Filters.RouteStates --Filters.RouteTableIds --Filters.RouteVmIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadRegions() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadQuotas() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Collections --Filters.QuotaNames --Filters.QuotaTypes --Filters.ShortDescriptions" -- ${cur}))
}
ReadPublicIps() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LinkPublicIpIds --Filters.NicAccountIds --Filters.NicIds --Filters.Placements --Filters.PrivateIps --Filters.PublicIpIds --Filters.PublicIps --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadPublicIpRanges() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadPublicCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadProductTypes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ProductTypeIds" -- ${cur}))
}
ReadPolicyVersions() {
    COMPREPLY=($(compgen -W " --FirstItem --PolicyOrn --ResultsPerPage" -- ${cur}))
}
ReadPolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
ReadPolicy() {
    COMPREPLY=($(compgen -W " --PolicyOrn" -- ${cur}))
}
ReadPolicies() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.OnlyLinked --Filters.PathPrefix --Filters.Scope --FirstItem --ResultsPerPage" -- ${cur}))
}
ReadNics() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.IsSourceDestCheck --Filters.LinkNicDeleteOnVmDeletion --Filters.LinkNicDeviceNumbers --Filters.LinkNicLinkNicIds --Filters.LinkNicStates --Filters.LinkNicVmAccountIds --Filters.LinkNicVmIds --Filters.LinkPublicIpAccountIds --Filters.LinkPublicIpLinkPublicIpIds --Filters.LinkPublicIpPublicIpIds --Filters.LinkPublicIpPublicIps --Filters.MacAddresses --Filters.NetIds --Filters.NicIds --Filters.PrivateDnsNames --Filters.PrivateIpsLinkPublicIpAccountIds --Filters.PrivateIpsLinkPublicIpPublicIps --Filters.PrivateIpsPrimaryIp --Filters.PrivateIpsPrivateIps --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.States --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadNets() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DhcpOptionsSetIds --Filters.IpRanges --Filters.IsDefault --Filters.NetIds --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadNetPeerings() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccepterNetAccountIds --Filters.AccepterNetIpRanges --Filters.AccepterNetNetIds --Filters.ExpirationDates --Filters.NetPeeringIds --Filters.SourceNetAccountIds --Filters.SourceNetIpRanges --Filters.SourceNetNetIds --Filters.StateMessages --Filters.StateNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNetAccessPoints() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.NetAccessPointIds --Filters.NetIds --Filters.ServiceNames --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNetAccessPointServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ServiceIds --Filters.ServiceNames" -- ${cur}))
}
ReadNatServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.NatServiceIds --Filters.NetIds --Filters.States --Filters.SubnetIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadLocations() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadLoadBalancers() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LoadBalancerNames" -- ${cur}))
}
ReadLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames" -- ${cur}))
}
ReadListenerRules() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ListenerRuleNames" -- ${cur}))
}
ReadLinkedPolicies() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.PathPrefix --FirstItem --ResultsPerPage --UserName" -- ${cur}))
}
ReadKeypairs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.KeypairFingerprints --Filters.KeypairNames --Filters.KeypairTypes" -- ${cur}))
}
ReadInternetServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.InternetServiceIds --Filters.LinkNetIds --Filters.LinkStates --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadImages() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccountAliases --Filters.AccountIds --Filters.Architectures --Filters.BlockDeviceMappingDeleteOnVmDeletion --Filters.BlockDeviceMappingDeviceNames --Filters.BlockDeviceMappingSnapshotIds --Filters.BlockDeviceMappingVolumeSizes --Filters.BlockDeviceMappingVolumeTypes --Filters.Descriptions --Filters.FileLocations --Filters.Hypervisors --Filters.ImageIds --Filters.ImageNames --Filters.PermissionsToLaunchAccountIds --Filters.PermissionsToLaunchGlobalPermission --Filters.ProductCodeNames --Filters.ProductCodes --Filters.RootDeviceNames --Filters.RootDeviceTypes --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualizationTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadImageExportTasks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.TaskIds" -- ${cur}))
}
ReadFlexibleGpus() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DeleteOnVmDeletion --Filters.FlexibleGpuIds --Filters.Generations --Filters.ModelNames --Filters.States --Filters.SubregionNames --Filters.VmIds" -- ${cur}))
}
ReadFlexibleGpuCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadDirectLinks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DirectLinkIds" -- ${cur}))
}
ReadDirectLinkInterfaces() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DirectLinkIds --Filters.DirectLinkInterfaceIds" -- ${cur}))
}
ReadDhcpOptions() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Default --Filters.DhcpOptionsSetIds --Filters.DomainNameServers --Filters.DomainNames --Filters.LogServers --Filters.NtpServers --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadDedicatedGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CpuGenerations --Filters.DedicatedGroupIds --Filters.Names --Filters.SubregionNames" -- ${cur}))
}
ReadConsumptionAccount() {
    COMPREPLY=($(compgen -W " --DryRun --FromDate --Overall --ShowPrice --ToDate" -- ${cur}))
}
ReadConsoleOutput() {
    COMPREPLY=($(compgen -W " --DryRun --VmId" -- ${cur}))
}
ReadClientGateways() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BgpAsns --Filters.ClientGatewayIds --Filters.ConnectionTypes --Filters.PublicIps --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadCatalogs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CurrentCatalogOnly --Filters.FromDate --Filters.ToDate" -- ${cur}))
}
ReadCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadCas() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CaFingerprints --Filters.CaIds --Filters.Descriptions" -- ${cur}))
}
ReadApiLogs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.QueryAccessKeys --Filters.QueryApiNames --Filters.QueryCallNames --Filters.QueryDateAfter --Filters.QueryDateBefore --Filters.QueryIpAddresses --Filters.QueryUserAgents --Filters.RequestIds --Filters.ResponseStatusCodes --NextPageToken --ResultsPerPage --With.AccountId --With.CallDuration --With.QueryAccessKey --With.QueryApiName --With.QueryApiVersion --With.QueryCallName --With.QueryDate --With.QueryHeaderRaw --With.QueryHeaderSize --With.QueryIpAddress --With.QueryPayloadRaw --With.QueryPayloadSize --With.QueryUserAgent --With.RequestId --With.ResponseSize --With.ResponseStatusCode" -- ${cur}))
}
ReadApiAccessRules() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ApiAccessRuleIds --Filters.CaIds --Filters.Cns --Filters.Descriptions --Filters.IpRanges" -- ${cur}))
}
ReadApiAccessPolicy() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadAdminPassword() {
    COMPREPLY=($(compgen -W " --DryRun --VmId" -- ${cur}))
}
ReadAccounts() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadAccessKeys() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccessKeyIds --Filters.States --UserName" -- ${cur}))
}
LinkVolume() {
    COMPREPLY=($(compgen -W " --DeviceName --DryRun --VmId --VolumeId" -- ${cur}))
}
LinkVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --VirtualGatewayId" -- ${cur}))
}
LinkRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --RouteTableId --SubnetId" -- ${cur}))
}
LinkPublicIp() {
    COMPREPLY=($(compgen -W " --AllowRelink --DryRun --NicId --PrivateIp --PublicIp --PublicIpId --VmId" -- ${cur}))
}
LinkPrivateIps() {
    COMPREPLY=($(compgen -W " --AllowRelink --DryRun --NicId --PrivateIps --SecondaryPrivateIpCount" -- ${cur}))
}
LinkPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserName" -- ${cur}))
}
LinkNic() {
    COMPREPLY=($(compgen -W " --DeviceNumber --DryRun --NicId --VmId" -- ${cur}))
}
LinkLoadBalancerBackendMachines() {
    COMPREPLY=($(compgen -W " --BackendIps --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
LinkInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId --NetId" -- ${cur}))
}
LinkFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId --VmId" -- ${cur}))
}
DeregisterVmsInLoadBalancer() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
DeleteVpnConnectionRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --VpnConnectionId" -- ${cur}))
}
DeleteVpnConnection() {
    COMPREPLY=($(compgen -W " --DryRun --VpnConnectionId" -- ${cur}))
}
DeleteVolume() {
    COMPREPLY=($(compgen -W " --DryRun --VolumeId" -- ${cur}))
}
DeleteVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
DeleteVmTemplate() {
    COMPREPLY=($(compgen -W " --DryRun --VmTemplateId" -- ${cur}))
}
DeleteVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmGroupId" -- ${cur}))
}
DeleteVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --VirtualGatewayId" -- ${cur}))
}
DeleteUser() {
    COMPREPLY=($(compgen -W " --DryRun --UserName" -- ${cur}))
}
DeleteTags() {
    COMPREPLY=($(compgen -W " --DryRun --ResourceIds --Tags" -- ${cur}))
}
DeleteSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --SubnetId" -- ${cur}))
}
DeleteSnapshot() {
    COMPREPLY=($(compgen -W " --DryRun --SnapshotId" -- ${cur}))
}
DeleteServerCertificate() {
    COMPREPLY=($(compgen -W " --DryRun --Name" -- ${cur}))
}
DeleteSecurityGroupRule() {
    COMPREPLY=($(compgen -W " --DryRun --Flow --FromPortRange --IpProtocol --IpRange --Rules --SecurityGroupAccountIdToUnlink --SecurityGroupId --SecurityGroupNameToUnlink --ToPortRange" -- ${cur}))
}
DeleteSecurityGroup() {
    COMPREPLY=($(compgen -W " --DryRun --SecurityGroupId --SecurityGroupName" -- ${cur}))
}
DeleteRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --RouteTableId" -- ${cur}))
}
DeleteRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --RouteTableId" -- ${cur}))
}
DeletePublicIp() {
    COMPREPLY=($(compgen -W " --DryRun --PublicIp --PublicIpId" -- ${cur}))
}
DeletePolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
DeletePolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn" -- ${cur}))
}
DeleteNic() {
    COMPREPLY=($(compgen -W " --DryRun --NicId" -- ${cur}))
}
DeleteNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}
DeleteNetAccessPoint() {
    COMPREPLY=($(compgen -W " --DryRun --NetAccessPointId" -- ${cur}))
}
DeleteNet() {
    COMPREPLY=($(compgen -W " --DryRun --NetId" -- ${cur}))
}
DeleteNatService() {
    COMPREPLY=($(compgen -W " --DryRun --NatServiceId" -- ${cur}))
}
DeleteLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames --Tags" -- ${cur}))
}
DeleteLoadBalancerPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName --PolicyName" -- ${cur}))
}
DeleteLoadBalancerListeners() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName --LoadBalancerPorts" -- ${cur}))
}
DeleteLoadBalancer() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName" -- ${cur}))
}
DeleteListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --ListenerRuleName" -- ${cur}))
}
DeleteKeypair() {
    COMPREPLY=($(compgen -W " --DryRun --KeypairName" -- ${cur}))
}
DeleteInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId" -- ${cur}))
}
DeleteImage() {
    COMPREPLY=($(compgen -W " --DryRun --ImageId" -- ${cur}))
}
DeleteFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId" -- ${cur}))
}
DeleteExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --ExportTaskId" -- ${cur}))
}
DeleteDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkInterfaceId --DryRun" -- ${cur}))
}
DeleteDirectLink() {
    COMPREPLY=($(compgen -W " --DirectLinkId --DryRun" -- ${cur}))
}
DeleteDhcpOptions() {
    COMPREPLY=($(compgen -W " --DhcpOptionsSetId --DryRun" -- ${cur}))
}
DeleteDedicatedGroup() {
    COMPREPLY=($(compgen -W " --DedicatedGroupId --DryRun --Force" -- ${cur}))
}
DeleteClientGateway() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --DryRun" -- ${cur}))
}
DeleteCa() {
    COMPREPLY=($(compgen -W " --CaId --DryRun" -- ${cur}))
}
DeleteApiAccessRule() {
    COMPREPLY=($(compgen -W " --ApiAccessRuleId --DryRun" -- ${cur}))
}
DeleteAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun --UserName" -- ${cur}))
}
CreateVpnConnectionRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --VpnConnectionId" -- ${cur}))
}
CreateVpnConnection() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --ConnectionType --DryRun --StaticRoutesOnly --VirtualGatewayId" -- ${cur}))
}
CreateVolume() {
    COMPREPLY=($(compgen -W " --DryRun --Iops --Size --SnapshotId --SubregionName --VolumeType" -- ${cur}))
}
CreateVms() {
    COMPREPLY=($(compgen -W " --BlockDeviceMappings --BootOnCreation --BsuOptimized --ClientToken --DeletionProtection --DryRun --ImageId --KeypairName --MaxVmsCount --MinVmsCount --NestedVirtualization --Nics --Performance --Placement.SubregionName --Placement.Tenancy --PrivateIps --SecurityGroupIds --SecurityGroups --SubnetId --UserData --VmInitiatedShutdownBehavior --VmType" -- ${cur}))
}
CreateVmTemplate() {
    COMPREPLY=($(compgen -W " --CpuCores --CpuGeneration --CpuPerformance --Description --DryRun --ImageId --KeypairName --Ram --Tags --VmTemplateName" -- ${cur}))
}
CreateVmGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --PositioningStrategy --SecurityGroupIds --SubnetId --Tags --VmCount --VmGroupName --VmTemplateId" -- ${cur}))
}
CreateVirtualGateway() {
    COMPREPLY=($(compgen -W " --ConnectionType --DryRun" -- ${cur}))
}
CreateUser() {
    COMPREPLY=($(compgen -W " --DryRun --Path --UserName" -- ${cur}))
}
CreateTags() {
    COMPREPLY=($(compgen -W " --DryRun --ResourceIds --Tags" -- ${cur}))
}
CreateSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --IpRange --NetId --SubregionName" -- ${cur}))
}
CreateSnapshotExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --OsuExport.DiskImageFormat --OsuExport.OsuApiKey.ApiKeyId --OsuExport.OsuApiKey.SecretKey  --OsuExport.OsuBucket --OsuExport.OsuManifestUrl --OsuExport.OsuPrefix --SnapshotId" -- ${cur}))
}
CreateSnapshot() {
    COMPREPLY=($(compgen -W " --Description --DryRun --FileLocation --SnapshotSize --SourceRegionName --SourceSnapshotId --VolumeId" -- ${cur}))
}
CreateServerCertificate() {
    COMPREPLY=($(compgen -W " --Body --Chain --DryRun --Name --Path --PrivateKey" -- ${cur}))
}
CreateSecurityGroupRule() {
    COMPREPLY=($(compgen -W " --DryRun --Flow --FromPortRange --IpProtocol --IpRange --Rules --SecurityGroupAccountIdToLink --SecurityGroupId --SecurityGroupNameToLink --ToPortRange" -- ${cur}))
}
CreateSecurityGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --NetId --SecurityGroupName" -- ${cur}))
}
CreateRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --NetId" -- ${cur}))
}
CreateRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --GatewayId --NatServiceId --NetPeeringId --NicId --RouteTableId --VmId" -- ${cur}))
}
CreatePublicIp() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
CreateProductType() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Vendor" -- ${cur}))
}
CreatePolicyVersion() {
    COMPREPLY=($(compgen -W " --Document --PolicyOrn --SetAsDefault" -- ${cur}))
}
CreatePolicy() {
    COMPREPLY=($(compgen -W " --Description --Document --DryRun --Path --PolicyName" -- ${cur}))
}
CreateNic() {
    COMPREPLY=($(compgen -W " --Description --DryRun --PrivateIps --SecurityGroupIds --SubnetId" -- ${cur}))
}
CreateNetPeering() {
    COMPREPLY=($(compgen -W " --AccepterNetId --DryRun --SourceNetId" -- ${cur}))
}
CreateNetAccessPoint() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --RouteTableIds --ServiceName" -- ${cur}))
}
CreateNet() {
    COMPREPLY=($(compgen -W " --DryRun --IpRange --Tenancy" -- ${cur}))
}
CreateNatService() {
    COMPREPLY=($(compgen -W " --DryRun --PublicIpId --SubnetId" -- ${cur}))
}
CreateLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames --Tags" -- ${cur}))
}
CreateLoadBalancerPolicy() {
    COMPREPLY=($(compgen -W " --CookieExpirationPeriod --CookieName --DryRun --LoadBalancerName --PolicyName --PolicyType" -- ${cur}))
}
CreateLoadBalancerListeners() {
    COMPREPLY=($(compgen -W " --DryRun --Listeners --LoadBalancerName" -- ${cur}))
}
CreateLoadBalancer() {
    COMPREPLY=($(compgen -W " --DryRun --Listeners --LoadBalancerName --LoadBalancerType --PublicIp --SecurityGroups --Subnets --SubregionNames --Tags" -- ${cur}))
}
CreateListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --Listener.LoadBalancerName --Listener.LoadBalancerPort --ListenerRule.Action --ListenerRule.HostNamePattern --ListenerRule.ListenerRuleName --ListenerRule.PathPattern --ListenerRule.Priority --VmIds" -- ${cur}))
}
CreateKeypair() {
    COMPREPLY=($(compgen -W " --DryRun --KeypairName --PublicKey" -- ${cur}))
}
CreateInternetService() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
CreateImageExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --ImageId --OsuExport.DiskImageFormat --OsuExport.OsuApiKey.ApiKeyId --OsuExport.OsuApiKey.SecretKey  --OsuExport.OsuBucket --OsuExport.OsuManifestUrl --OsuExport.OsuPrefix" -- ${cur}))
}
CreateImage() {
    COMPREPLY=($(compgen -W " --Architecture --BlockDeviceMappings --Description --DryRun --FileLocation --ImageName --NoReboot --ProductCodes --RootDeviceName --SourceImageId --SourceRegionName --VmId" -- ${cur}))
}
CreateFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DeleteOnVmDeletion --DryRun --Generation --ModelName --SubregionName" -- ${cur}))
}
CreateDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkId --DirectLinkInterface.BgpAsn --DirectLinkInterface.BgpKey --DirectLinkInterface.ClientPrivateIp --DirectLinkInterface.DirectLinkInterfaceName --DirectLinkInterface.OutscalePrivateIp --DirectLinkInterface.VirtualGatewayId --DirectLinkInterface.Vlan --DryRun" -- ${cur}))
}
CreateDirectLink() {
    COMPREPLY=($(compgen -W " --Bandwidth --DirectLinkName --DryRun --Location" -- ${cur}))
}
CreateDhcpOptions() {
    COMPREPLY=($(compgen -W " --DomainName --DomainNameServers --DryRun --LogServers --NtpServers" -- ${cur}))
}
CreateDedicatedGroup() {
    COMPREPLY=($(compgen -W " --CpuGeneration --DryRun --Name --SubregionName" -- ${cur}))
}
CreateClientGateway() {
    COMPREPLY=($(compgen -W " --BgpAsn --ConnectionType --DryRun --PublicIp" -- ${cur}))
}
CreateCa() {
    COMPREPLY=($(compgen -W " --CaPem --Description --DryRun" -- ${cur}))
}
CreateApiAccessRule() {
    COMPREPLY=($(compgen -W " --CaIds --Cns --Description --DryRun --IpRanges" -- ${cur}))
}
CreateAccount() {
    COMPREPLY=($(compgen -W " --AdditionalEmails --City --CompanyName --Country --CustomerId --DryRun --Email --FirstName --JobTitle --LastName --MobileNumber --PhoneNumber --StateProvince --VatNumber --ZipCode" -- ${cur}))
}
CreateAccessKey() {
    COMPREPLY=($(compgen -W " --DryRun --ExpirationDate --UserName" -- ${cur}))
}
CheckAuthentication() {
    COMPREPLY=($(compgen -W " --DryRun --Login --Password" -- ${cur}))
}
AcceptNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}

_mk_profiles()
{
    cur=${COMP_WORDS[COMP_CWORD]}

    if [ -f ~/.osc/config.json ]; then
        PROFILES=$(cat ~/.osc/config.json | tr -d '\n:'  | sed 's/{[^{}]*}//g' | tr -d "{}\" " | sed 's/,/ /g')
    fi
    for x in $PROFILES ; do echo --profile=$x ; done
}

_cognac()
{
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case ${COMP_CWORD} in
        *)
            case ${prev} in
		UpdateVpnConnection | UpdateVolume | UpdateVmTemplate | UpdateVmGroup | UpdateVm | UpdateUser | UpdateSubnet | UpdateSnapshot | UpdateServerCertificate | UpdateRouteTableLink | UpdateRoutePropagation | UpdateRoute | UpdateNic | UpdateNetAccessPoint | UpdateNet | UpdateLoadBalancer | UpdateListenerRule | UpdateImage | UpdateFlexibleGpu | UpdateDirectLinkInterface | UpdateDedicatedGroup | UpdateCa | UpdateApiAccessRule | UpdateApiAccessPolicy | UpdateAccount | UpdateAccessKey | UnlinkVolume | UnlinkVirtualGateway | UnlinkRouteTable | UnlinkPublicIp | UnlinkPrivateIps | UnlinkPolicy | UnlinkNic | UnlinkLoadBalancerBackendMachines | UnlinkInternetService | UnlinkFlexibleGpu | StopVms | StartVms | SetDefaultPolicyVersion | ScaleUpVmGroup | ScaleDownVmGroup | RejectNetPeering | RegisterVmsInLoadBalancer | RebootVms | ReadVpnConnections | ReadVolumes | ReadVmsState | ReadVmsHealth | ReadVms | ReadVmTypes | ReadVmTemplates | ReadVmGroups | ReadVirtualGateways | ReadUsers | ReadTags | ReadSubregions | ReadSubnets | ReadSnapshots | ReadSnapshotExportTasks | ReadServerCertificates | ReadSecurityGroups | ReadSecretAccessKey | ReadRouteTables | ReadRegions | ReadQuotas | ReadPublicIps | ReadPublicIpRanges | ReadPublicCatalog | ReadProductTypes | ReadPolicyVersions | ReadPolicyVersion | ReadPolicy | ReadPolicies | ReadNics | ReadNets | ReadNetPeerings | ReadNetAccessPoints | ReadNetAccessPointServices | ReadNatServices | ReadLocations | ReadLoadBalancers | ReadLoadBalancerTags | ReadListenerRules | ReadLinkedPolicies | ReadKeypairs | ReadInternetServices | ReadImages | ReadImageExportTasks | ReadFlexibleGpus | ReadFlexibleGpuCatalog | ReadDirectLinks | ReadDirectLinkInterfaces | ReadDhcpOptions | ReadDedicatedGroups | ReadConsumptionAccount | ReadConsoleOutput | ReadClientGateways | ReadCatalogs | ReadCatalog | ReadCas | ReadApiLogs | ReadApiAccessRules | ReadApiAccessPolicy | ReadAdminPassword | ReadAccounts | ReadAccessKeys | LinkVolume | LinkVirtualGateway | LinkRouteTable | LinkPublicIp | LinkPrivateIps | LinkPolicy | LinkNic | LinkLoadBalancerBackendMachines | LinkInternetService | LinkFlexibleGpu | DeregisterVmsInLoadBalancer | DeleteVpnConnectionRoute | DeleteVpnConnection | DeleteVolume | DeleteVms | DeleteVmTemplate | DeleteVmGroup | DeleteVirtualGateway | DeleteUser | DeleteTags | DeleteSubnet | DeleteSnapshot | DeleteServerCertificate | DeleteSecurityGroupRule | DeleteSecurityGroup | DeleteRouteTable | DeleteRoute | DeletePublicIp | DeletePolicyVersion | DeletePolicy | DeleteNic | DeleteNetPeering | DeleteNetAccessPoint | DeleteNet | DeleteNatService | DeleteLoadBalancerTags | DeleteLoadBalancerPolicy | DeleteLoadBalancerListeners | DeleteLoadBalancer | DeleteListenerRule | DeleteKeypair | DeleteInternetService | DeleteImage | DeleteFlexibleGpu | DeleteExportTask | DeleteDirectLinkInterface | DeleteDirectLink | DeleteDhcpOptions | DeleteDedicatedGroup | DeleteClientGateway | DeleteCa | DeleteApiAccessRule | DeleteAccessKey | CreateVpnConnectionRoute | CreateVpnConnection | CreateVolume | CreateVms | CreateVmTemplate | CreateVmGroup | CreateVirtualGateway | CreateUser | CreateTags | CreateSubnet | CreateSnapshotExportTask | CreateSnapshot | CreateServerCertificate | CreateSecurityGroupRule | CreateSecurityGroup | CreateRouteTable | CreateRoute | CreatePublicIp | CreateProductType | CreatePolicyVersion | CreatePolicy | CreateNic | CreateNetPeering | CreateNetAccessPoint | CreateNet | CreateNatService | CreateLoadBalancerTags | CreateLoadBalancerPolicy | CreateLoadBalancerListeners | CreateLoadBalancer | CreateListenerRule | CreateKeypair | CreateInternetService | CreateImageExportTask | CreateImage | CreateFlexibleGpu | CreateDirectLinkInterface | CreateDirectLink | CreateDhcpOptions | CreateDedicatedGroup | CreateClientGateway | CreateCa | CreateApiAccessRule | CreateAccount | CreateAccessKey | CheckAuthentication | AcceptNetPeering)
		    eval ${prev}
		    ;;
		--help)
		    COMPREPLY=($(compgen -W "UpdateVpnConnection UpdateVolume UpdateVmTemplate UpdateVmGroup UpdateVm UpdateUser UpdateSubnet UpdateSnapshot UpdateServerCertificate UpdateRouteTableLink UpdateRoutePropagation UpdateRoute UpdateNic UpdateNetAccessPoint UpdateNet UpdateLoadBalancer UpdateListenerRule UpdateImage UpdateFlexibleGpu UpdateDirectLinkInterface UpdateDedicatedGroup UpdateCa UpdateApiAccessRule UpdateApiAccessPolicy UpdateAccount UpdateAccessKey UnlinkVolume UnlinkVirtualGateway UnlinkRouteTable UnlinkPublicIp UnlinkPrivateIps UnlinkPolicy UnlinkNic UnlinkLoadBalancerBackendMachines UnlinkInternetService UnlinkFlexibleGpu StopVms StartVms SetDefaultPolicyVersion ScaleUpVmGroup ScaleDownVmGroup RejectNetPeering RegisterVmsInLoadBalancer RebootVms ReadVpnConnections ReadVolumes ReadVmsState ReadVmsHealth ReadVms ReadVmTypes ReadVmTemplates ReadVmGroups ReadVirtualGateways ReadUsers ReadTags ReadSubregions ReadSubnets ReadSnapshots ReadSnapshotExportTasks ReadServerCertificates ReadSecurityGroups ReadSecretAccessKey ReadRouteTables ReadRegions ReadQuotas ReadPublicIps ReadPublicIpRanges ReadPublicCatalog ReadProductTypes ReadPolicyVersions ReadPolicyVersion ReadPolicy ReadPolicies ReadNics ReadNets ReadNetPeerings ReadNetAccessPoints ReadNetAccessPointServices ReadNatServices ReadLocations ReadLoadBalancers ReadLoadBalancerTags ReadListenerRules ReadLinkedPolicies ReadKeypairs ReadInternetServices ReadImages ReadImageExportTasks ReadFlexibleGpus ReadFlexibleGpuCatalog ReadDirectLinks ReadDirectLinkInterfaces ReadDhcpOptions ReadDedicatedGroups ReadConsumptionAccount ReadConsoleOutput ReadClientGateways ReadCatalogs ReadCatalog ReadCas ReadApiLogs ReadApiAccessRules ReadApiAccessPolicy ReadAdminPassword ReadAccounts ReadAccessKeys LinkVolume LinkVirtualGateway LinkRouteTable LinkPublicIp LinkPrivateIps LinkPolicy LinkNic LinkLoadBalancerBackendMachines LinkInternetService LinkFlexibleGpu DeregisterVmsInLoadBalancer DeleteVpnConnectionRoute DeleteVpnConnection DeleteVolume DeleteVms DeleteVmTemplate DeleteVmGroup DeleteVirtualGateway DeleteUser DeleteTags DeleteSubnet DeleteSnapshot DeleteServerCertificate DeleteSecurityGroupRule DeleteSecurityGroup DeleteRouteTable DeleteRoute DeletePublicIp DeletePolicyVersion DeletePolicy DeleteNic DeleteNetPeering DeleteNetAccessPoint DeleteNet DeleteNatService DeleteLoadBalancerTags DeleteLoadBalancerPolicy DeleteLoadBalancerListeners DeleteLoadBalancer DeleteListenerRule DeleteKeypair DeleteInternetService DeleteImage DeleteFlexibleGpu DeleteExportTask DeleteDirectLinkInterface DeleteDirectLink DeleteDhcpOptions DeleteDedicatedGroup DeleteClientGateway DeleteCa DeleteApiAccessRule DeleteAccessKey CreateVpnConnectionRoute CreateVpnConnection CreateVolume CreateVms CreateVmTemplate CreateVmGroup CreateVirtualGateway CreateUser CreateTags CreateSubnet CreateSnapshotExportTask CreateSnapshot CreateServerCertificate CreateSecurityGroupRule CreateSecurityGroup CreateRouteTable CreateRoute CreatePublicIp CreateProductType CreatePolicyVersion CreatePolicy CreateNic CreateNetPeering CreateNetAccessPoint CreateNet CreateNatService CreateLoadBalancerTags CreateLoadBalancerPolicy CreateLoadBalancerListeners CreateLoadBalancer CreateListenerRule CreateKeypair CreateInternetService CreateImageExportTask CreateImage CreateFlexibleGpu CreateDirectLinkInterface CreateDirectLink CreateDhcpOptions CreateDedicatedGroup CreateClientGateway CreateCa CreateApiAccessRule CreateAccount CreateAccessKey CheckAuthentication AcceptNetPeering" -- ${cur}))
		    ;;
                *)
                    PROFILES=$(_mk_profiles)
                    COMPREPLY=($(compgen -W "$PROFILES --config --login --password --authentication_method --color --insecure --raw-print --verbose --help -h --list-calls --version UpdateVpnConnection UpdateVolume UpdateVmTemplate UpdateVmGroup UpdateVm UpdateUser UpdateSubnet UpdateSnapshot UpdateServerCertificate UpdateRouteTableLink UpdateRoutePropagation UpdateRoute UpdateNic UpdateNetAccessPoint UpdateNet UpdateLoadBalancer UpdateListenerRule UpdateImage UpdateFlexibleGpu UpdateDirectLinkInterface UpdateDedicatedGroup UpdateCa UpdateApiAccessRule UpdateApiAccessPolicy UpdateAccount UpdateAccessKey UnlinkVolume UnlinkVirtualGateway UnlinkRouteTable UnlinkPublicIp UnlinkPrivateIps UnlinkPolicy UnlinkNic UnlinkLoadBalancerBackendMachines UnlinkInternetService UnlinkFlexibleGpu StopVms StartVms SetDefaultPolicyVersion ScaleUpVmGroup ScaleDownVmGroup RejectNetPeering RegisterVmsInLoadBalancer RebootVms ReadVpnConnections ReadVolumes ReadVmsState ReadVmsHealth ReadVms ReadVmTypes ReadVmTemplates ReadVmGroups ReadVirtualGateways ReadUsers ReadTags ReadSubregions ReadSubnets ReadSnapshots ReadSnapshotExportTasks ReadServerCertificates ReadSecurityGroups ReadSecretAccessKey ReadRouteTables ReadRegions ReadQuotas ReadPublicIps ReadPublicIpRanges ReadPublicCatalog ReadProductTypes ReadPolicyVersions ReadPolicyVersion ReadPolicy ReadPolicies ReadNics ReadNets ReadNetPeerings ReadNetAccessPoints ReadNetAccessPointServices ReadNatServices ReadLocations ReadLoadBalancers ReadLoadBalancerTags ReadListenerRules ReadLinkedPolicies ReadKeypairs ReadInternetServices ReadImages ReadImageExportTasks ReadFlexibleGpus ReadFlexibleGpuCatalog ReadDirectLinks ReadDirectLinkInterfaces ReadDhcpOptions ReadDedicatedGroups ReadConsumptionAccount ReadConsoleOutput ReadClientGateways ReadCatalogs ReadCatalog ReadCas ReadApiLogs ReadApiAccessRules ReadApiAccessPolicy ReadAdminPassword ReadAccounts ReadAccessKeys LinkVolume LinkVirtualGateway LinkRouteTable LinkPublicIp LinkPrivateIps LinkPolicy LinkNic LinkLoadBalancerBackendMachines LinkInternetService LinkFlexibleGpu DeregisterVmsInLoadBalancer DeleteVpnConnectionRoute DeleteVpnConnection DeleteVolume DeleteVms DeleteVmTemplate DeleteVmGroup DeleteVirtualGateway DeleteUser DeleteTags DeleteSubnet DeleteSnapshot DeleteServerCertificate DeleteSecurityGroupRule DeleteSecurityGroup DeleteRouteTable DeleteRoute DeletePublicIp DeletePolicyVersion DeletePolicy DeleteNic DeleteNetPeering DeleteNetAccessPoint DeleteNet DeleteNatService DeleteLoadBalancerTags DeleteLoadBalancerPolicy DeleteLoadBalancerListeners DeleteLoadBalancer DeleteListenerRule DeleteKeypair DeleteInternetService DeleteImage DeleteFlexibleGpu DeleteExportTask DeleteDirectLinkInterface DeleteDirectLink DeleteDhcpOptions DeleteDedicatedGroup DeleteClientGateway DeleteCa DeleteApiAccessRule DeleteAccessKey CreateVpnConnectionRoute CreateVpnConnection CreateVolume CreateVms CreateVmTemplate CreateVmGroup CreateVirtualGateway CreateUser CreateTags CreateSubnet CreateSnapshotExportTask CreateSnapshot CreateServerCertificate CreateSecurityGroupRule CreateSecurityGroup CreateRouteTable CreateRoute CreatePublicIp CreateProductType CreatePolicyVersion CreatePolicy CreateNic CreateNetPeering CreateNetAccessPoint CreateNet CreateNatService CreateLoadBalancerTags CreateLoadBalancerPolicy CreateLoadBalancerListeners CreateLoadBalancer CreateListenerRule CreateKeypair CreateInternetService CreateImageExportTask CreateImage CreateFlexibleGpu CreateDirectLinkInterface CreateDirectLink CreateDhcpOptions CreateDedicatedGroup CreateClientGateway CreateCa CreateApiAccessRule CreateAccount CreateAccessKey CheckAuthentication AcceptNetPeering" -- ${cur}))
		    ;;
            esac
            ;;
    esac
}

complete -F _cognac oapi-cli
complete -F _cognac oapi-cli-x86_64.AppImage

# thoses one are for debug
complete -F _cognac ./oapi-cli
complete -F _cognac ./oapi-cli-x86_64.AppImage
