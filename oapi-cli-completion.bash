#/usr/bin/env bash

AcceptNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}
AddUserToUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --UserGroupName --UserGroupPath --UserName --UserPath" -- ${cur}))
}
CheckAuthentication() {
    COMPREPLY=($(compgen -W " --DryRun --Login --Password" -- ${cur}))
}
CreateAccessKey() {
    COMPREPLY=($(compgen -W " --DryRun --ExpirationDate --UserName" -- ${cur}))
}
CreateAccount() {
    COMPREPLY=($(compgen -W " --AdditionalEmails --City --CompanyName --Country --CustomerId --DryRun --Email --FirstName --JobTitle --LastName --MobileNumber --PhoneNumber --StateProvince --VatNumber --ZipCode" -- ${cur}))
}
CreateApiAccessRule() {
    COMPREPLY=($(compgen -W " --CaIds --Cns --Description --DryRun --IpRanges" -- ${cur}))
}
CreateCa() {
    COMPREPLY=($(compgen -W " --CaPem --Description --DryRun" -- ${cur}))
}
CreateClientGateway() {
    COMPREPLY=($(compgen -W " --BgpAsn --ConnectionType --DryRun --PublicIp" -- ${cur}))
}
CreateDedicatedGroup() {
    COMPREPLY=($(compgen -W " --CpuGeneration --DryRun --Name --SubregionName" -- ${cur}))
}
CreateDhcpOptions() {
    COMPREPLY=($(compgen -W " --DomainName --DomainNameServers --DryRun --LogServers --NtpServers" -- ${cur}))
}
CreateDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkId --DirectLinkInterface.BgpAsn --DirectLinkInterface.BgpKey --DirectLinkInterface.ClientPrivateIp --DirectLinkInterface.DirectLinkInterfaceName --DirectLinkInterface.OutscalePrivateIp --DirectLinkInterface.VirtualGatewayId --DirectLinkInterface.Vlan --DryRun" -- ${cur}))
}
CreateDirectLink() {
    COMPREPLY=($(compgen -W " --Bandwidth --DirectLinkName --DryRun --Location" -- ${cur}))
}
CreateFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DeleteOnVmDeletion --DryRun --Generation --ModelName --SubregionName" -- ${cur}))
}
CreateImageExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --ImageId --OsuExport.DiskImageFormat --OsuExport.OsuApiKey.ApiKeyId --OsuExport.OsuApiKey.SecretKey  --OsuExport.OsuBucket --OsuExport.OsuManifestUrl --OsuExport.OsuPrefix" -- ${cur}))
}
CreateImage() {
    COMPREPLY=($(compgen -W " --Architecture --BlockDeviceMappings --Description --DryRun --FileLocation --ImageName --NoReboot --ProductCodes --RootDeviceName --SourceImageId --SourceRegionName --VmId" -- ${cur}))
}
CreateInternetService() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
CreateKeypair() {
    COMPREPLY=($(compgen -W " --DryRun --KeypairName --PublicKey" -- ${cur}))
}
CreateListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --Listener.LoadBalancerName --Listener.LoadBalancerPort --ListenerRule.Action --ListenerRule.HostNamePattern --ListenerRule.ListenerRuleName --ListenerRule.PathPattern --ListenerRule.Priority --VmIds" -- ${cur}))
}
CreateLoadBalancerListeners() {
    COMPREPLY=($(compgen -W " --DryRun --Listeners --LoadBalancerName" -- ${cur}))
}
CreateLoadBalancerPolicy() {
    COMPREPLY=($(compgen -W " --CookieExpirationPeriod --CookieName --DryRun --LoadBalancerName --PolicyName --PolicyType" -- ${cur}))
}
CreateLoadBalancer() {
    COMPREPLY=($(compgen -W " --DryRun --Listeners --LoadBalancerName --LoadBalancerType --PublicIp --SecurityGroups --Subnets --SubregionNames --Tags" -- ${cur}))
}
CreateLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames --Tags" -- ${cur}))
}
CreateNatService() {
    COMPREPLY=($(compgen -W " --ClientToken --DryRun --PublicIpId --SubnetId" -- ${cur}))
}
CreateNetAccessPoint() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --RouteTableIds --ServiceName" -- ${cur}))
}
CreateNetPeering() {
    COMPREPLY=($(compgen -W " --AccepterNetId --AccepterOwnerId --DryRun --SourceNetId" -- ${cur}))
}
CreateNet() {
    COMPREPLY=($(compgen -W " --DryRun --IpRange --Tenancy" -- ${cur}))
}
CreateNic() {
    COMPREPLY=($(compgen -W " --Description --DryRun --PrivateIps --SecurityGroupIds --SubnetId" -- ${cur}))
}
CreatePolicy() {
    COMPREPLY=($(compgen -W " --Description --Document --DryRun --Path --PolicyName" -- ${cur}))
}
CreatePolicyVersion() {
    COMPREPLY=($(compgen -W " --Document --PolicyOrn --SetAsDefault" -- ${cur}))
}
CreateProductType() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Vendor" -- ${cur}))
}
CreatePublicIp() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
CreateRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --GatewayId --NatServiceId --NetPeeringId --NicId --RouteTableId --VmId" -- ${cur}))
}
CreateRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --NetId" -- ${cur}))
}
CreateSecurityGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --NetId --SecurityGroupName" -- ${cur}))
}
CreateSecurityGroupRule() {
    COMPREPLY=($(compgen -W " --DryRun --Flow --FromPortRange --IpProtocol --IpRange --Rules --SecurityGroupAccountIdToLink --SecurityGroupId --SecurityGroupNameToLink --ToPortRange" -- ${cur}))
}
CreateServerCertificate() {
    COMPREPLY=($(compgen -W " --Body --Chain --DryRun --Name --Path --PrivateKey" -- ${cur}))
}
CreateSnapshotExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --OsuExport.DiskImageFormat --OsuExport.OsuApiKey.ApiKeyId --OsuExport.OsuApiKey.SecretKey  --OsuExport.OsuBucket --OsuExport.OsuManifestUrl --OsuExport.OsuPrefix --SnapshotId" -- ${cur}))
}
CreateSnapshot() {
    COMPREPLY=($(compgen -W " --Description --DryRun --FileLocation --SnapshotSize --SourceRegionName --SourceSnapshotId --VolumeId" -- ${cur}))
}
CreateSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --IpRange --NetId --SubregionName" -- ${cur}))
}
CreateTags() {
    COMPREPLY=($(compgen -W " --DryRun --ResourceIds --Tags" -- ${cur}))
}
CreateUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --Path --UserGroupName" -- ${cur}))
}
CreateUser() {
    COMPREPLY=($(compgen -W " --DryRun --Path --UserEmail --UserName" -- ${cur}))
}
CreateVirtualGateway() {
    COMPREPLY=($(compgen -W " --ConnectionType --DryRun" -- ${cur}))
}
CreateVmGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --PositioningStrategy --SecurityGroupIds --SubnetId --Tags --VmCount --VmGroupName --VmTemplateId" -- ${cur}))
}
CreateVmTemplate() {
    COMPREPLY=($(compgen -W " --CpuCores --CpuGeneration --CpuPerformance --Description --DryRun --ImageId --KeypairName --Ram --Tags --VmTemplateName" -- ${cur}))
}
CreateVms() {
    COMPREPLY=($(compgen -W " --BlockDeviceMappings --BootOnCreation --BsuOptimized --ClientToken --DeletionProtection --DryRun --ImageId --KeypairName --MaxVmsCount --MinVmsCount --NestedVirtualization --Nics --Performance --Placement.SubregionName --Placement.Tenancy --PrivateIps --SecurityGroupIds --SecurityGroups --SubnetId --UserData --VmInitiatedShutdownBehavior --VmType" -- ${cur}))
}
CreateVolume() {
    COMPREPLY=($(compgen -W " --DryRun --Iops --Size --SnapshotId --SubregionName --VolumeType" -- ${cur}))
}
CreateVpnConnection() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --ConnectionType --DryRun --StaticRoutesOnly --VirtualGatewayId" -- ${cur}))
}
CreateVpnConnectionRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --VpnConnectionId" -- ${cur}))
}
DeleteAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun --UserName" -- ${cur}))
}
DeleteApiAccessRule() {
    COMPREPLY=($(compgen -W " --ApiAccessRuleId --DryRun" -- ${cur}))
}
DeleteCa() {
    COMPREPLY=($(compgen -W " --CaId --DryRun" -- ${cur}))
}
DeleteClientGateway() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --DryRun" -- ${cur}))
}
DeleteDedicatedGroup() {
    COMPREPLY=($(compgen -W " --DedicatedGroupId --DryRun --Force" -- ${cur}))
}
DeleteDhcpOptions() {
    COMPREPLY=($(compgen -W " --DhcpOptionsSetId --DryRun" -- ${cur}))
}
DeleteDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkInterfaceId --DryRun" -- ${cur}))
}
DeleteDirectLink() {
    COMPREPLY=($(compgen -W " --DirectLinkId --DryRun" -- ${cur}))
}
DeleteExportTask() {
    COMPREPLY=($(compgen -W " --DryRun --ExportTaskId" -- ${cur}))
}
DeleteFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId" -- ${cur}))
}
DeleteImage() {
    COMPREPLY=($(compgen -W " --DryRun --ImageId" -- ${cur}))
}
DeleteInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId" -- ${cur}))
}
DeleteKeypair() {
    COMPREPLY=($(compgen -W " --DryRun --KeypairName" -- ${cur}))
}
DeleteListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --ListenerRuleName" -- ${cur}))
}
DeleteLoadBalancerListeners() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName --LoadBalancerPorts" -- ${cur}))
}
DeleteLoadBalancerPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName --PolicyName" -- ${cur}))
}
DeleteLoadBalancer() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerName" -- ${cur}))
}
DeleteLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames --Tags" -- ${cur}))
}
DeleteNatService() {
    COMPREPLY=($(compgen -W " --DryRun --NatServiceId" -- ${cur}))
}
DeleteNetAccessPoint() {
    COMPREPLY=($(compgen -W " --DryRun --NetAccessPointId" -- ${cur}))
}
DeleteNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}
DeleteNet() {
    COMPREPLY=($(compgen -W " --DryRun --NetId" -- ${cur}))
}
DeleteNic() {
    COMPREPLY=($(compgen -W " --DryRun --NicId" -- ${cur}))
}
DeletePolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn" -- ${cur}))
}
DeletePolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
DeletePublicIp() {
    COMPREPLY=($(compgen -W " --DryRun --PublicIp --PublicIpId" -- ${cur}))
}
DeleteRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --RouteTableId" -- ${cur}))
}
DeleteRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --RouteTableId" -- ${cur}))
}
DeleteSecurityGroup() {
    COMPREPLY=($(compgen -W " --DryRun --SecurityGroupId --SecurityGroupName" -- ${cur}))
}
DeleteSecurityGroupRule() {
    COMPREPLY=($(compgen -W " --DryRun --Flow --FromPortRange --IpProtocol --IpRange --Rules --SecurityGroupAccountIdToUnlink --SecurityGroupId --SecurityGroupNameToUnlink --ToPortRange" -- ${cur}))
}
DeleteServerCertificate() {
    COMPREPLY=($(compgen -W " --DryRun --Name" -- ${cur}))
}
DeleteSnapshot() {
    COMPREPLY=($(compgen -W " --DryRun --SnapshotId" -- ${cur}))
}
DeleteSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --SubnetId" -- ${cur}))
}
DeleteTags() {
    COMPREPLY=($(compgen -W " --DryRun --ResourceIds --Tags" -- ${cur}))
}
DeleteUserGroupPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyName --UserGroupName --UserGroupPath" -- ${cur}))
}
DeleteUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --Force --Path --UserGroupName" -- ${cur}))
}
DeleteUser() {
    COMPREPLY=($(compgen -W " --DryRun --UserName" -- ${cur}))
}
DeleteVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --VirtualGatewayId" -- ${cur}))
}
DeleteVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmGroupId" -- ${cur}))
}
DeleteVmTemplate() {
    COMPREPLY=($(compgen -W " --DryRun --VmTemplateId" -- ${cur}))
}
DeleteVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
DeleteVolume() {
    COMPREPLY=($(compgen -W " --DryRun --VolumeId" -- ${cur}))
}
DeleteVpnConnection() {
    COMPREPLY=($(compgen -W " --DryRun --VpnConnectionId" -- ${cur}))
}
DeleteVpnConnectionRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --VpnConnectionId" -- ${cur}))
}
DeregisterVmsInLoadBalancer() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
LinkFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId --VmId" -- ${cur}))
}
LinkInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId --NetId" -- ${cur}))
}
LinkLoadBalancerBackendMachines() {
    COMPREPLY=($(compgen -W " --BackendIps --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
LinkManagedPolicyToUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserGroupName" -- ${cur}))
}
LinkNic() {
    COMPREPLY=($(compgen -W " --DeviceNumber --DryRun --NicId --VmId" -- ${cur}))
}
LinkPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserName" -- ${cur}))
}
LinkPrivateIps() {
    COMPREPLY=($(compgen -W " --AllowRelink --DryRun --NicId --PrivateIps --SecondaryPrivateIpCount" -- ${cur}))
}
LinkPublicIp() {
    COMPREPLY=($(compgen -W " --AllowRelink --DryRun --NicId --PrivateIp --PublicIp --PublicIpId --VmId" -- ${cur}))
}
LinkRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --RouteTableId --SubnetId" -- ${cur}))
}
LinkVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --VirtualGatewayId" -- ${cur}))
}
LinkVolume() {
    COMPREPLY=($(compgen -W " --DeviceName --DryRun --VmId --VolumeId" -- ${cur}))
}
PutUserGroupPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyDocument --PolicyName --UserGroupName --UserGroupPath" -- ${cur}))
}
ReadAccessKeys() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccessKeyIds --Filters.States --UserName" -- ${cur}))
}
ReadAccounts() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadAdminPassword() {
    COMPREPLY=($(compgen -W " --DryRun --VmId" -- ${cur}))
}
ReadApiAccessPolicy() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadApiAccessRules() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ApiAccessRuleIds --Filters.CaIds --Filters.Cns --Filters.Descriptions --Filters.IpRanges" -- ${cur}))
}
ReadApiLogs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.QueryAccessKeys --Filters.QueryApiNames --Filters.QueryCallNames --Filters.QueryDateAfter --Filters.QueryDateBefore --Filters.QueryIpAddresses --Filters.QueryUserAgents --Filters.RequestIds --Filters.ResponseStatusCodes --NextPageToken --ResultsPerPage --With.AccountId --With.CallDuration --With.QueryAccessKey --With.QueryApiName --With.QueryApiVersion --With.QueryCallName --With.QueryDate --With.QueryHeaderRaw --With.QueryHeaderSize --With.QueryIpAddress --With.QueryPayloadRaw --With.QueryPayloadSize --With.QueryUserAgent --With.RequestId --With.ResponseSize --With.ResponseStatusCode" -- ${cur}))
}
ReadCas() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CaFingerprints --Filters.CaIds --Filters.Descriptions" -- ${cur}))
}
ReadCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadCatalogs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CurrentCatalogOnly --Filters.FromDate --Filters.ToDate" -- ${cur}))
}
ReadClientGateways() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BgpAsns --Filters.ClientGatewayIds --Filters.ConnectionTypes --Filters.PublicIps --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadConsoleOutput() {
    COMPREPLY=($(compgen -W " --DryRun --VmId" -- ${cur}))
}
ReadConsumptionAccount() {
    COMPREPLY=($(compgen -W " --DryRun --FromDate --Overall --ShowPrice --ToDate" -- ${cur}))
}
ReadDedicatedGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CpuGenerations --Filters.DedicatedGroupIds --Filters.Names --Filters.SubregionNames --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadDhcpOptions() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Default --Filters.DhcpOptionsSetIds --Filters.DomainNameServers --Filters.DomainNames --Filters.LogServers --Filters.NtpServers --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadDirectLinkInterfaces() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DirectLinkIds --Filters.DirectLinkInterfaceIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadDirectLinks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DirectLinkIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadEntitiesLinkedToPolicy() {
    COMPREPLY=($(compgen -W " --EntitiesType --FirstItem --PolicyOrn --ResultsPerPage" -- ${cur}))
}
ReadFlexibleGpuCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadFlexibleGpus() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DeleteOnVmDeletion --Filters.FlexibleGpuIds --Filters.Generations --Filters.ModelNames --Filters.States --Filters.SubregionNames --Filters.VmIds" -- ${cur}))
}
ReadImageExportTasks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.TaskIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadImages() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccountAliases --Filters.AccountIds --Filters.Architectures --Filters.BlockDeviceMappingDeleteOnVmDeletion --Filters.BlockDeviceMappingDeviceNames --Filters.BlockDeviceMappingSnapshotIds --Filters.BlockDeviceMappingVolumeSizes --Filters.BlockDeviceMappingVolumeTypes --Filters.Descriptions --Filters.FileLocations --Filters.Hypervisors --Filters.ImageIds --Filters.ImageNames --Filters.PermissionsToLaunchAccountIds --Filters.PermissionsToLaunchGlobalPermission --Filters.ProductCodeNames --Filters.ProductCodes --Filters.RootDeviceNames --Filters.RootDeviceTypes --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualizationTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadInternetServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.InternetServiceIds --Filters.LinkNetIds --Filters.LinkStates --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadKeypairs() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.KeypairFingerprints --Filters.KeypairNames --Filters.KeypairTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadLinkedPolicies() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.PathPrefix --FirstItem --ResultsPerPage --UserName" -- ${cur}))
}
ReadListenerRules() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ListenerRuleNames" -- ${cur}))
}
ReadLoadBalancerTags() {
    COMPREPLY=($(compgen -W " --DryRun --LoadBalancerNames" -- ${cur}))
}
ReadLoadBalancers() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LoadBalancerNames" -- ${cur}))
}
ReadLocations() {
    COMPREPLY=($(compgen -W " --DryRun --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadManagedPoliciesLinkedToUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.PathPrefix --Filters.UserGroupIds --FirstItem --ResultsPerPage --UserGroupName" -- ${cur}))
}
ReadNatServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ClientTokens --Filters.NatServiceIds --Filters.NetIds --Filters.States --Filters.SubnetIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNetAccessPointServices() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ServiceIds --Filters.ServiceNames --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNetAccessPoints() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.NetAccessPointIds --Filters.NetIds --Filters.ServiceNames --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNetPeerings() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccepterNetAccountIds --Filters.AccepterNetIpRanges --Filters.AccepterNetNetIds --Filters.ExpirationDates --Filters.NetPeeringIds --Filters.SourceNetAccountIds --Filters.SourceNetIpRanges --Filters.SourceNetNetIds --Filters.StateMessages --Filters.StateNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNets() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.DhcpOptionsSetIds --Filters.IpRanges --Filters.IsDefault --Filters.NetIds --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadNics() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.IsSourceDestCheck --Filters.LinkNicDeleteOnVmDeletion --Filters.LinkNicDeviceNumbers --Filters.LinkNicLinkNicIds --Filters.LinkNicStates --Filters.LinkNicVmAccountIds --Filters.LinkNicVmIds --Filters.LinkPublicIpAccountIds --Filters.LinkPublicIpLinkPublicIpIds --Filters.LinkPublicIpPublicDnsNames --Filters.LinkPublicIpPublicIpIds --Filters.LinkPublicIpPublicIps --Filters.MacAddresses --Filters.NetIds --Filters.NicIds --Filters.PrivateDnsNames --Filters.PrivateIpsLinkPublicIpAccountIds --Filters.PrivateIpsLinkPublicIpPublicIps --Filters.PrivateIpsPrimaryIp --Filters.PrivateIpsPrivateIps --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.States --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags" -- ${cur}))
}
ReadPolicies() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.OnlyLinked --Filters.PathPrefix --Filters.Scope --FirstItem --ResultsPerPage" -- ${cur}))
}
ReadPolicy() {
    COMPREPLY=($(compgen -W " --PolicyOrn" -- ${cur}))
}
ReadPolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
ReadPolicyVersions() {
    COMPREPLY=($(compgen -W " --FirstItem --PolicyOrn --ResultsPerPage" -- ${cur}))
}
ReadProductTypes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ProductTypeIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadPublicCatalog() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadPublicIpRanges() {
    COMPREPLY=($(compgen -W " --DryRun --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadPublicIps() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LinkPublicIpIds --Filters.NicAccountIds --Filters.NicIds --Filters.Placements --Filters.PrivateIps --Filters.PublicIpIds --Filters.PublicIps --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadQuotas() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Collections --Filters.QuotaNames --Filters.QuotaTypes --Filters.ShortDescriptions --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadRegions() {
    COMPREPLY=($(compgen -W " --DryRun" -- ${cur}))
}
ReadRouteTables() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.LinkRouteTableIds --Filters.LinkRouteTableLinkRouteTableIds --Filters.LinkRouteTableMain --Filters.LinkSubnetIds --Filters.NetIds --Filters.RouteCreationMethods --Filters.RouteDestinationIpRanges --Filters.RouteDestinationServiceIds --Filters.RouteGatewayIds --Filters.RouteNatServiceIds --Filters.RouteNetPeeringIds --Filters.RouteStates --Filters.RouteTableIds --Filters.RouteVmIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadSecretAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun" -- ${cur}))
}
ReadSecurityGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.InboundRuleAccountIds --Filters.InboundRuleFromPortRanges --Filters.InboundRuleIpRanges --Filters.InboundRuleProtocols --Filters.InboundRuleSecurityGroupIds --Filters.InboundRuleSecurityGroupNames --Filters.InboundRuleToPortRanges --Filters.NetIds --Filters.OutboundRuleAccountIds --Filters.OutboundRuleFromPortRanges --Filters.OutboundRuleIpRanges --Filters.OutboundRuleProtocols --Filters.OutboundRuleSecurityGroupIds --Filters.OutboundRuleSecurityGroupNames --Filters.OutboundRuleToPortRanges --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadServerCertificates() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Paths" -- ${cur}))
}
ReadSnapshotExportTasks() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.TaskIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadSnapshots() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AccountAliases --Filters.AccountIds --Filters.Descriptions --Filters.FromCreationDate --Filters.PermissionsToCreateVolumeAccountIds --Filters.PermissionsToCreateVolumeGlobalPermission --Filters.Progresses --Filters.SnapshotIds --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.ToCreationDate --Filters.VolumeIds --Filters.VolumeSizes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadSubnets() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.AvailableIpsCounts --Filters.IpRanges --Filters.NetIds --Filters.States --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadSubregions() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.RegionNames --Filters.States --Filters.SubregionNames --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadTags() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Keys --Filters.ResourceIds --Filters.ResourceTypes --Filters.Values --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadUnitPrice() {
    COMPREPLY=($(compgen -W " --Operation --Service --Type" -- ${cur}))
}
ReadUserGroupPolicies() {
    COMPREPLY=($(compgen -W " --DryRun --FirstItem --ResultsPerPage --UserGroupName --UserGroupPath" -- ${cur}))
}
ReadUserGroupPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyName --UserGroupName --UserGroupPath" -- ${cur}))
}
ReadUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --Path --UserGroupName" -- ${cur}))
}
ReadUserGroupsPerUser() {
    COMPREPLY=($(compgen -W " --DryRun --UserName --UserPath" -- ${cur}))
}
ReadUserGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.PathPrefix --Filters.UserGroupIds --FirstItem --ResultsPerPage" -- ${cur}))
}
ReadUsers() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.UserIds --FirstItem --ResultsPerPage" -- ${cur}))
}
ReadVirtualGateways() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.ConnectionTypes --Filters.LinkNetIds --Filters.LinkStates --Filters.States --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualGatewayIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVmGroups() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Descriptions --Filters.SecurityGroupIds --Filters.SubnetIds --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmCounts --Filters.VmGroupIds --Filters.VmGroupNames --Filters.VmTemplateIds" -- ${cur}))
}
ReadVmTemplates() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CpuCores --Filters.CpuGenerations --Filters.CpuPerformances --Filters.Descriptions --Filters.ImageIds --Filters.KeypairNames --Filters.Rams --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VmTemplateIds --Filters.VmTemplateNames" -- ${cur}))
}
ReadVmTypes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BsuOptimized --Filters.EphemeralsTypes --Filters.Eths --Filters.Gpus --Filters.MemorySizes --Filters.VcoreCounts --Filters.VmTypeNames --Filters.VolumeCounts --Filters.VolumeSizes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVmsHealth() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
ReadVms() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.Architectures --Filters.BlockDeviceMappingDeleteOnVmDeletion --Filters.BlockDeviceMappingDeviceNames --Filters.BlockDeviceMappingLinkDates --Filters.BlockDeviceMappingStates --Filters.BlockDeviceMappingVolumeIds --Filters.ClientTokens --Filters.CreationDates --Filters.ImageIds --Filters.IsSourceDestChecked --Filters.KeypairNames --Filters.LaunchNumbers --Filters.Lifecycles --Filters.NetIds --Filters.NicAccountIds --Filters.NicDescriptions --Filters.NicIsSourceDestChecked --Filters.NicLinkNicDeleteOnVmDeletion --Filters.NicLinkNicDeviceNumbers --Filters.NicLinkNicLinkNicDates --Filters.NicLinkNicLinkNicIds --Filters.NicLinkNicStates --Filters.NicLinkNicVmAccountIds --Filters.NicLinkNicVmIds --Filters.NicLinkPublicIpAccountIds --Filters.NicLinkPublicIpLinkPublicIpIds --Filters.NicLinkPublicIpPublicIpIds --Filters.NicLinkPublicIpPublicIps --Filters.NicMacAddresses --Filters.NicNetIds --Filters.NicNicIds --Filters.NicPrivateIpsLinkPublicIpAccountIds --Filters.NicPrivateIpsLinkPublicIpIds --Filters.NicPrivateIpsPrimaryIp --Filters.NicPrivateIpsPrivateIps --Filters.NicSecurityGroupIds --Filters.NicSecurityGroupNames --Filters.NicStates --Filters.NicSubnetIds --Filters.NicSubregionNames --Filters.Platforms --Filters.PrivateIps --Filters.ProductCodes --Filters.PublicIps --Filters.ReservationIds --Filters.RootDeviceNames --Filters.RootDeviceTypes --Filters.SecurityGroupIds --Filters.SecurityGroupNames --Filters.StateReasonCodes --Filters.StateReasonMessages --Filters.StateReasons --Filters.SubnetIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.Tenancies --Filters.VmIds --Filters.VmSecurityGroupIds --Filters.VmSecurityGroupNames --Filters.VmStateCodes --Filters.VmStateNames --Filters.VmTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVmsState() {
    COMPREPLY=($(compgen -W " --AllVms --DryRun --Filters.MaintenanceEventCodes --Filters.MaintenanceEventDescriptions --Filters.MaintenanceEventsNotAfter --Filters.MaintenanceEventsNotBefore --Filters.SubregionNames --Filters.VmIds --Filters.VmStates --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVolumes() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.CreationDates --Filters.LinkVolumeDeleteOnVmDeletion --Filters.LinkVolumeDeviceNames --Filters.LinkVolumeLinkDates --Filters.LinkVolumeLinkStates --Filters.LinkVolumeVmIds --Filters.SnapshotIds --Filters.SubregionNames --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VolumeIds --Filters.VolumeSizes --Filters.VolumeStates --Filters.VolumeTypes --NextPageToken --ResultsPerPage" -- ${cur}))
}
ReadVpnConnections() {
    COMPREPLY=($(compgen -W " --DryRun --Filters.BgpAsns --Filters.ClientGatewayIds --Filters.ConnectionTypes --Filters.RouteDestinationIpRanges --Filters.States --Filters.StaticRoutesOnly --Filters.TagKeys --Filters.TagValues --Filters.Tags --Filters.VirtualGatewayIds --Filters.VpnConnectionIds --NextPageToken --ResultsPerPage" -- ${cur}))
}
RebootVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
RegisterVmsInLoadBalancer() {
    COMPREPLY=($(compgen -W " --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
RejectNetPeering() {
    COMPREPLY=($(compgen -W " --DryRun --NetPeeringId" -- ${cur}))
}
RemoveUserFromUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --UserGroupName --UserGroupPath --UserName --UserPath" -- ${cur}))
}
ScaleDownVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmGroupId --VmSubtraction" -- ${cur}))
}
ScaleUpVmGroup() {
    COMPREPLY=($(compgen -W " --DryRun --VmAddition --VmGroupId" -- ${cur}))
}
SetDefaultPolicyVersion() {
    COMPREPLY=($(compgen -W " --PolicyOrn --VersionId" -- ${cur}))
}
StartVms() {
    COMPREPLY=($(compgen -W " --DryRun --VmIds" -- ${cur}))
}
StopVms() {
    COMPREPLY=($(compgen -W " --DryRun --ForceStop --VmIds" -- ${cur}))
}
UnlinkFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DryRun --FlexibleGpuId" -- ${cur}))
}
UnlinkInternetService() {
    COMPREPLY=($(compgen -W " --DryRun --InternetServiceId --NetId" -- ${cur}))
}
UnlinkLoadBalancerBackendMachines() {
    COMPREPLY=($(compgen -W " --BackendIps --BackendVmIds --DryRun --LoadBalancerName" -- ${cur}))
}
UnlinkManagedPolicyFromUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserGroupName" -- ${cur}))
}
UnlinkNic() {
    COMPREPLY=($(compgen -W " --DryRun --LinkNicId" -- ${cur}))
}
UnlinkPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --PolicyOrn --UserName" -- ${cur}))
}
UnlinkPrivateIps() {
    COMPREPLY=($(compgen -W " --DryRun --NicId --PrivateIps" -- ${cur}))
}
UnlinkPublicIp() {
    COMPREPLY=($(compgen -W " --DryRun --LinkPublicIpId --PublicIp" -- ${cur}))
}
UnlinkRouteTable() {
    COMPREPLY=($(compgen -W " --DryRun --LinkRouteTableId" -- ${cur}))
}
UnlinkVirtualGateway() {
    COMPREPLY=($(compgen -W " --DryRun --NetId --VirtualGatewayId" -- ${cur}))
}
UnlinkVolume() {
    COMPREPLY=($(compgen -W " --DryRun --ForceUnlink --VolumeId" -- ${cur}))
}
UpdateAccessKey() {
    COMPREPLY=($(compgen -W " --AccessKeyId --DryRun --ExpirationDate --State --UserName" -- ${cur}))
}
UpdateAccount() {
    COMPREPLY=($(compgen -W " --AdditionalEmails --City --CompanyName --Country --DryRun --Email --FirstName --JobTitle --LastName --MobileNumber --PhoneNumber --StateProvince --VatNumber --ZipCode" -- ${cur}))
}
UpdateApiAccessPolicy() {
    COMPREPLY=($(compgen -W " --DryRun --MaxAccessKeyExpirationSeconds --RequireTrustedEnv" -- ${cur}))
}
UpdateApiAccessRule() {
    COMPREPLY=($(compgen -W " --ApiAccessRuleId --CaIds --Cns --Description --DryRun --IpRanges" -- ${cur}))
}
UpdateCa() {
    COMPREPLY=($(compgen -W " --CaId --Description --DryRun" -- ${cur}))
}
UpdateDedicatedGroup() {
    COMPREPLY=($(compgen -W " --DedicatedGroupId --DryRun --Name" -- ${cur}))
}
UpdateDirectLinkInterface() {
    COMPREPLY=($(compgen -W " --DirectLinkInterfaceId --DryRun --Mtu" -- ${cur}))
}
UpdateFlexibleGpu() {
    COMPREPLY=($(compgen -W " --DeleteOnVmDeletion --DryRun --FlexibleGpuId" -- ${cur}))
}
UpdateImage() {
    COMPREPLY=($(compgen -W " --Description --DryRun --ImageId --PermissionsToLaunch.Additions.AccountIds --PermissionsToLaunch.Additions.GlobalPermission  --PermissionsToLaunch.Removals.AccountIds --PermissionsToLaunch.Removals.GlobalPermission " -- ${cur}))
}
UpdateListenerRule() {
    COMPREPLY=($(compgen -W " --DryRun --HostPattern --ListenerRuleName --PathPattern" -- ${cur}))
}
UpdateLoadBalancer() {
    COMPREPLY=($(compgen -W " --AccessLog.IsEnabled --AccessLog.OsuBucketName --AccessLog.OsuBucketPrefix --AccessLog.PublicationInterval --DryRun --HealthCheck.CheckInterval --HealthCheck.HealthyThreshold --HealthCheck.Path --HealthCheck.Port --HealthCheck.Protocol --HealthCheck.Timeout --HealthCheck.UnhealthyThreshold --LoadBalancerName --LoadBalancerPort --PolicyNames --PublicIp --SecuredCookies --SecurityGroups --ServerCertificateId" -- ${cur}))
}
UpdateNetAccessPoint() {
    COMPREPLY=($(compgen -W " --AddRouteTableIds --DryRun --NetAccessPointId --RemoveRouteTableIds" -- ${cur}))
}
UpdateNet() {
    COMPREPLY=($(compgen -W " --DhcpOptionsSetId --DryRun --NetId" -- ${cur}))
}
UpdateNic() {
    COMPREPLY=($(compgen -W " --Description --DryRun --LinkNic.DeleteOnVmDeletion --LinkNic.LinkNicId --NicId --SecurityGroupIds" -- ${cur}))
}
UpdateRoutePropagation() {
    COMPREPLY=($(compgen -W " --DryRun --Enable --RouteTableId --VirtualGatewayId" -- ${cur}))
}
UpdateRoute() {
    COMPREPLY=($(compgen -W " --DestinationIpRange --DryRun --GatewayId --NatServiceId --NetPeeringId --NicId --RouteTableId --VmId" -- ${cur}))
}
UpdateRouteTableLink() {
    COMPREPLY=($(compgen -W " --DryRun --LinkRouteTableId --RouteTableId" -- ${cur}))
}
UpdateServerCertificate() {
    COMPREPLY=($(compgen -W " --DryRun --Name --NewName --NewPath" -- ${cur}))
}
UpdateSnapshot() {
    COMPREPLY=($(compgen -W " --DryRun --PermissionsToCreateVolume.Additions.AccountIds --PermissionsToCreateVolume.Additions.GlobalPermission  --PermissionsToCreateVolume.Removals.AccountIds --PermissionsToCreateVolume.Removals.GlobalPermission  --SnapshotId" -- ${cur}))
}
UpdateSubnet() {
    COMPREPLY=($(compgen -W " --DryRun --MapPublicIpOnLaunch --SubnetId" -- ${cur}))
}
UpdateUserGroup() {
    COMPREPLY=($(compgen -W " --DryRun --NewPath --NewUserGroupName --Path --UserGroupName" -- ${cur}))
}
UpdateUser() {
    COMPREPLY=($(compgen -W " --DryRun --NewPath --NewUserEmail --NewUserName --UserName" -- ${cur}))
}
UpdateVmGroup() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Tags --VmGroupId --VmGroupName --VmTemplateId" -- ${cur}))
}
UpdateVm() {
    COMPREPLY=($(compgen -W " --BlockDeviceMappings --BsuOptimized --DeletionProtection --DryRun --IsSourceDestChecked --KeypairName --NestedVirtualization --Performance --SecurityGroupIds --UserData --VmId --VmInitiatedShutdownBehavior --VmType" -- ${cur}))
}
UpdateVmTemplate() {
    COMPREPLY=($(compgen -W " --Description --DryRun --Tags --VmTemplateId --VmTemplateName" -- ${cur}))
}
UpdateVolume() {
    COMPREPLY=($(compgen -W " --DryRun --Iops --Size --VolumeId --VolumeType" -- ${cur}))
}
UpdateVpnConnection() {
    COMPREPLY=($(compgen -W " --ClientGatewayId --DryRun --VirtualGatewayId --VpnConnectionId --VpnOptions.Phase1Options.DpdTimeoutAction --VpnOptions.Phase1Options.DpdTimeoutSeconds --VpnOptions.Phase1Options.IkeVersions --VpnOptions.Phase1Options.Phase1DhGroupNumbers --VpnOptions.Phase1Options.Phase1EncryptionAlgorithms --VpnOptions.Phase1Options.Phase1IntegrityAlgorithms --VpnOptions.Phase1Options.Phase1LifetimeSeconds --VpnOptions.Phase1Options.ReplayWindowSize --VpnOptions.Phase1Options.StartupAction  --VpnOptions.Phase2Options.Phase2DhGroupNumbers --VpnOptions.Phase2Options.Phase2EncryptionAlgorithms --VpnOptions.Phase2Options.Phase2IntegrityAlgorithms --VpnOptions.Phase2Options.Phase2LifetimeSeconds --VpnOptions.Phase2Options.PreSharedKey  --VpnOptions.TunnelInsideIpRange" -- ${cur}))
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
		AcceptNetPeering | AddUserToUserGroup | CheckAuthentication | CreateAccessKey | CreateAccount | CreateApiAccessRule | CreateCa | CreateClientGateway | CreateDedicatedGroup | CreateDhcpOptions | CreateDirectLinkInterface | CreateDirectLink | CreateFlexibleGpu | CreateImageExportTask | CreateImage | CreateInternetService | CreateKeypair | CreateListenerRule | CreateLoadBalancerListeners | CreateLoadBalancerPolicy | CreateLoadBalancer | CreateLoadBalancerTags | CreateNatService | CreateNetAccessPoint | CreateNetPeering | CreateNet | CreateNic | CreatePolicy | CreatePolicyVersion | CreateProductType | CreatePublicIp | CreateRoute | CreateRouteTable | CreateSecurityGroup | CreateSecurityGroupRule | CreateServerCertificate | CreateSnapshotExportTask | CreateSnapshot | CreateSubnet | CreateTags | CreateUserGroup | CreateUser | CreateVirtualGateway | CreateVmGroup | CreateVmTemplate | CreateVms | CreateVolume | CreateVpnConnection | CreateVpnConnectionRoute | DeleteAccessKey | DeleteApiAccessRule | DeleteCa | DeleteClientGateway | DeleteDedicatedGroup | DeleteDhcpOptions | DeleteDirectLinkInterface | DeleteDirectLink | DeleteExportTask | DeleteFlexibleGpu | DeleteImage | DeleteInternetService | DeleteKeypair | DeleteListenerRule | DeleteLoadBalancerListeners | DeleteLoadBalancerPolicy | DeleteLoadBalancer | DeleteLoadBalancerTags | DeleteNatService | DeleteNetAccessPoint | DeleteNetPeering | DeleteNet | DeleteNic | DeletePolicy | DeletePolicyVersion | DeletePublicIp | DeleteRoute | DeleteRouteTable | DeleteSecurityGroup | DeleteSecurityGroupRule | DeleteServerCertificate | DeleteSnapshot | DeleteSubnet | DeleteTags | DeleteUserGroupPolicy | DeleteUserGroup | DeleteUser | DeleteVirtualGateway | DeleteVmGroup | DeleteVmTemplate | DeleteVms | DeleteVolume | DeleteVpnConnection | DeleteVpnConnectionRoute | DeregisterVmsInLoadBalancer | LinkFlexibleGpu | LinkInternetService | LinkLoadBalancerBackendMachines | LinkManagedPolicyToUserGroup | LinkNic | LinkPolicy | LinkPrivateIps | LinkPublicIp | LinkRouteTable | LinkVirtualGateway | LinkVolume | PutUserGroupPolicy | ReadAccessKeys | ReadAccounts | ReadAdminPassword | ReadApiAccessPolicy | ReadApiAccessRules | ReadApiLogs | ReadCas | ReadCatalog | ReadCatalogs | ReadClientGateways | ReadConsoleOutput | ReadConsumptionAccount | ReadDedicatedGroups | ReadDhcpOptions | ReadDirectLinkInterfaces | ReadDirectLinks | ReadEntitiesLinkedToPolicy | ReadFlexibleGpuCatalog | ReadFlexibleGpus | ReadImageExportTasks | ReadImages | ReadInternetServices | ReadKeypairs | ReadLinkedPolicies | ReadListenerRules | ReadLoadBalancerTags | ReadLoadBalancers | ReadLocations | ReadManagedPoliciesLinkedToUserGroup | ReadNatServices | ReadNetAccessPointServices | ReadNetAccessPoints | ReadNetPeerings | ReadNets | ReadNics | ReadPolicies | ReadPolicy | ReadPolicyVersion | ReadPolicyVersions | ReadProductTypes | ReadPublicCatalog | ReadPublicIpRanges | ReadPublicIps | ReadQuotas | ReadRegions | ReadRouteTables | ReadSecretAccessKey | ReadSecurityGroups | ReadServerCertificates | ReadSnapshotExportTasks | ReadSnapshots | ReadSubnets | ReadSubregions | ReadTags | ReadUnitPrice | ReadUserGroupPolicies | ReadUserGroupPolicy | ReadUserGroup | ReadUserGroupsPerUser | ReadUserGroups | ReadUsers | ReadVirtualGateways | ReadVmGroups | ReadVmTemplates | ReadVmTypes | ReadVmsHealth | ReadVms | ReadVmsState | ReadVolumes | ReadVpnConnections | RebootVms | RegisterVmsInLoadBalancer | RejectNetPeering | RemoveUserFromUserGroup | ScaleDownVmGroup | ScaleUpVmGroup | SetDefaultPolicyVersion | StartVms | StopVms | UnlinkFlexibleGpu | UnlinkInternetService | UnlinkLoadBalancerBackendMachines | UnlinkManagedPolicyFromUserGroup | UnlinkNic | UnlinkPolicy | UnlinkPrivateIps | UnlinkPublicIp | UnlinkRouteTable | UnlinkVirtualGateway | UnlinkVolume | UpdateAccessKey | UpdateAccount | UpdateApiAccessPolicy | UpdateApiAccessRule | UpdateCa | UpdateDedicatedGroup | UpdateDirectLinkInterface | UpdateFlexibleGpu | UpdateImage | UpdateListenerRule | UpdateLoadBalancer | UpdateNetAccessPoint | UpdateNet | UpdateNic | UpdateRoutePropagation | UpdateRoute | UpdateRouteTableLink | UpdateServerCertificate | UpdateSnapshot | UpdateSubnet | UpdateUserGroup | UpdateUser | UpdateVmGroup | UpdateVm | UpdateVmTemplate | UpdateVolume | UpdateVpnConnection)
		    eval ${prev}
		    ;;
		--help)
		    COMPREPLY=($(compgen -W "AcceptNetPeering AddUserToUserGroup CheckAuthentication CreateAccessKey CreateAccount CreateApiAccessRule CreateCa CreateClientGateway CreateDedicatedGroup CreateDhcpOptions CreateDirectLinkInterface CreateDirectLink CreateFlexibleGpu CreateImageExportTask CreateImage CreateInternetService CreateKeypair CreateListenerRule CreateLoadBalancerListeners CreateLoadBalancerPolicy CreateLoadBalancer CreateLoadBalancerTags CreateNatService CreateNetAccessPoint CreateNetPeering CreateNet CreateNic CreatePolicy CreatePolicyVersion CreateProductType CreatePublicIp CreateRoute CreateRouteTable CreateSecurityGroup CreateSecurityGroupRule CreateServerCertificate CreateSnapshotExportTask CreateSnapshot CreateSubnet CreateTags CreateUserGroup CreateUser CreateVirtualGateway CreateVmGroup CreateVmTemplate CreateVms CreateVolume CreateVpnConnection CreateVpnConnectionRoute DeleteAccessKey DeleteApiAccessRule DeleteCa DeleteClientGateway DeleteDedicatedGroup DeleteDhcpOptions DeleteDirectLinkInterface DeleteDirectLink DeleteExportTask DeleteFlexibleGpu DeleteImage DeleteInternetService DeleteKeypair DeleteListenerRule DeleteLoadBalancerListeners DeleteLoadBalancerPolicy DeleteLoadBalancer DeleteLoadBalancerTags DeleteNatService DeleteNetAccessPoint DeleteNetPeering DeleteNet DeleteNic DeletePolicy DeletePolicyVersion DeletePublicIp DeleteRoute DeleteRouteTable DeleteSecurityGroup DeleteSecurityGroupRule DeleteServerCertificate DeleteSnapshot DeleteSubnet DeleteTags DeleteUserGroupPolicy DeleteUserGroup DeleteUser DeleteVirtualGateway DeleteVmGroup DeleteVmTemplate DeleteVms DeleteVolume DeleteVpnConnection DeleteVpnConnectionRoute DeregisterVmsInLoadBalancer LinkFlexibleGpu LinkInternetService LinkLoadBalancerBackendMachines LinkManagedPolicyToUserGroup LinkNic LinkPolicy LinkPrivateIps LinkPublicIp LinkRouteTable LinkVirtualGateway LinkVolume PutUserGroupPolicy ReadAccessKeys ReadAccounts ReadAdminPassword ReadApiAccessPolicy ReadApiAccessRules ReadApiLogs ReadCas ReadCatalog ReadCatalogs ReadClientGateways ReadConsoleOutput ReadConsumptionAccount ReadDedicatedGroups ReadDhcpOptions ReadDirectLinkInterfaces ReadDirectLinks ReadEntitiesLinkedToPolicy ReadFlexibleGpuCatalog ReadFlexibleGpus ReadImageExportTasks ReadImages ReadInternetServices ReadKeypairs ReadLinkedPolicies ReadListenerRules ReadLoadBalancerTags ReadLoadBalancers ReadLocations ReadManagedPoliciesLinkedToUserGroup ReadNatServices ReadNetAccessPointServices ReadNetAccessPoints ReadNetPeerings ReadNets ReadNics ReadPolicies ReadPolicy ReadPolicyVersion ReadPolicyVersions ReadProductTypes ReadPublicCatalog ReadPublicIpRanges ReadPublicIps ReadQuotas ReadRegions ReadRouteTables ReadSecretAccessKey ReadSecurityGroups ReadServerCertificates ReadSnapshotExportTasks ReadSnapshots ReadSubnets ReadSubregions ReadTags ReadUnitPrice ReadUserGroupPolicies ReadUserGroupPolicy ReadUserGroup ReadUserGroupsPerUser ReadUserGroups ReadUsers ReadVirtualGateways ReadVmGroups ReadVmTemplates ReadVmTypes ReadVmsHealth ReadVms ReadVmsState ReadVolumes ReadVpnConnections RebootVms RegisterVmsInLoadBalancer RejectNetPeering RemoveUserFromUserGroup ScaleDownVmGroup ScaleUpVmGroup SetDefaultPolicyVersion StartVms StopVms UnlinkFlexibleGpu UnlinkInternetService UnlinkLoadBalancerBackendMachines UnlinkManagedPolicyFromUserGroup UnlinkNic UnlinkPolicy UnlinkPrivateIps UnlinkPublicIp UnlinkRouteTable UnlinkVirtualGateway UnlinkVolume UpdateAccessKey UpdateAccount UpdateApiAccessPolicy UpdateApiAccessRule UpdateCa UpdateDedicatedGroup UpdateDirectLinkInterface UpdateFlexibleGpu UpdateImage UpdateListenerRule UpdateLoadBalancer UpdateNetAccessPoint UpdateNet UpdateNic UpdateRoutePropagation UpdateRoute UpdateRouteTableLink UpdateServerCertificate UpdateSnapshot UpdateSubnet UpdateUserGroup UpdateUser UpdateVmGroup UpdateVm UpdateVmTemplate UpdateVolume UpdateVpnConnection" -- ${cur}))
		    ;;
                *)
                    PROFILES=$(_mk_profiles)
                    COMPREPLY=($(compgen -W "$PROFILES --config --login --password --authentication_method --color --insecure --raw-print --verbose --help -h --list-calls --version AcceptNetPeering AddUserToUserGroup CheckAuthentication CreateAccessKey CreateAccount CreateApiAccessRule CreateCa CreateClientGateway CreateDedicatedGroup CreateDhcpOptions CreateDirectLinkInterface CreateDirectLink CreateFlexibleGpu CreateImageExportTask CreateImage CreateInternetService CreateKeypair CreateListenerRule CreateLoadBalancerListeners CreateLoadBalancerPolicy CreateLoadBalancer CreateLoadBalancerTags CreateNatService CreateNetAccessPoint CreateNetPeering CreateNet CreateNic CreatePolicy CreatePolicyVersion CreateProductType CreatePublicIp CreateRoute CreateRouteTable CreateSecurityGroup CreateSecurityGroupRule CreateServerCertificate CreateSnapshotExportTask CreateSnapshot CreateSubnet CreateTags CreateUserGroup CreateUser CreateVirtualGateway CreateVmGroup CreateVmTemplate CreateVms CreateVolume CreateVpnConnection CreateVpnConnectionRoute DeleteAccessKey DeleteApiAccessRule DeleteCa DeleteClientGateway DeleteDedicatedGroup DeleteDhcpOptions DeleteDirectLinkInterface DeleteDirectLink DeleteExportTask DeleteFlexibleGpu DeleteImage DeleteInternetService DeleteKeypair DeleteListenerRule DeleteLoadBalancerListeners DeleteLoadBalancerPolicy DeleteLoadBalancer DeleteLoadBalancerTags DeleteNatService DeleteNetAccessPoint DeleteNetPeering DeleteNet DeleteNic DeletePolicy DeletePolicyVersion DeletePublicIp DeleteRoute DeleteRouteTable DeleteSecurityGroup DeleteSecurityGroupRule DeleteServerCertificate DeleteSnapshot DeleteSubnet DeleteTags DeleteUserGroupPolicy DeleteUserGroup DeleteUser DeleteVirtualGateway DeleteVmGroup DeleteVmTemplate DeleteVms DeleteVolume DeleteVpnConnection DeleteVpnConnectionRoute DeregisterVmsInLoadBalancer LinkFlexibleGpu LinkInternetService LinkLoadBalancerBackendMachines LinkManagedPolicyToUserGroup LinkNic LinkPolicy LinkPrivateIps LinkPublicIp LinkRouteTable LinkVirtualGateway LinkVolume PutUserGroupPolicy ReadAccessKeys ReadAccounts ReadAdminPassword ReadApiAccessPolicy ReadApiAccessRules ReadApiLogs ReadCas ReadCatalog ReadCatalogs ReadClientGateways ReadConsoleOutput ReadConsumptionAccount ReadDedicatedGroups ReadDhcpOptions ReadDirectLinkInterfaces ReadDirectLinks ReadEntitiesLinkedToPolicy ReadFlexibleGpuCatalog ReadFlexibleGpus ReadImageExportTasks ReadImages ReadInternetServices ReadKeypairs ReadLinkedPolicies ReadListenerRules ReadLoadBalancerTags ReadLoadBalancers ReadLocations ReadManagedPoliciesLinkedToUserGroup ReadNatServices ReadNetAccessPointServices ReadNetAccessPoints ReadNetPeerings ReadNets ReadNics ReadPolicies ReadPolicy ReadPolicyVersion ReadPolicyVersions ReadProductTypes ReadPublicCatalog ReadPublicIpRanges ReadPublicIps ReadQuotas ReadRegions ReadRouteTables ReadSecretAccessKey ReadSecurityGroups ReadServerCertificates ReadSnapshotExportTasks ReadSnapshots ReadSubnets ReadSubregions ReadTags ReadUnitPrice ReadUserGroupPolicies ReadUserGroupPolicy ReadUserGroup ReadUserGroupsPerUser ReadUserGroups ReadUsers ReadVirtualGateways ReadVmGroups ReadVmTemplates ReadVmTypes ReadVmsHealth ReadVms ReadVmsState ReadVolumes ReadVpnConnections RebootVms RegisterVmsInLoadBalancer RejectNetPeering RemoveUserFromUserGroup ScaleDownVmGroup ScaleUpVmGroup SetDefaultPolicyVersion StartVms StopVms UnlinkFlexibleGpu UnlinkInternetService UnlinkLoadBalancerBackendMachines UnlinkManagedPolicyFromUserGroup UnlinkNic UnlinkPolicy UnlinkPrivateIps UnlinkPublicIp UnlinkRouteTable UnlinkVirtualGateway UnlinkVolume UpdateAccessKey UpdateAccount UpdateApiAccessPolicy UpdateApiAccessRule UpdateCa UpdateDedicatedGroup UpdateDirectLinkInterface UpdateFlexibleGpu UpdateImage UpdateListenerRule UpdateLoadBalancer UpdateNetAccessPoint UpdateNet UpdateNic UpdateRoutePropagation UpdateRoute UpdateRouteTableLink UpdateServerCertificate UpdateSnapshot UpdateSubnet UpdateUserGroup UpdateUser UpdateVmGroup UpdateVm UpdateVmTemplate UpdateVolume UpdateVpnConnection" -- ${cur}))
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
