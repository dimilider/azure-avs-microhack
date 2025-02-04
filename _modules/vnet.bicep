param location string
param name string
param userId int
param proctorId int
@allowed([
  'default'
  'proctor'
])
param dnsServer string = 'proctor'

var userIdIndex = userId - 1

//Users IP ranges definition
var usersIpRanges = [
{
  user : 1
  addressSpace : '10.228.16.0/25'
  subnets : [
    '10.228.16.0/27'
    '10.228.16.32/27'
    '10.228.16.64/27'
    'NA'
  ]
  asn : 65001
  remoteAsn: 65013
  ownBgpIp : '10.228.16.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-1-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 2
  addressSpace : '10.228.16.128/25'
  subnets : [
    '10.228.16.128/27'
    '10.228.16.160/27'
    '10.228.16.192/27'
    'NA'
  ]
  asn : 65002
  remoteAsn: 65013
  ownBgpIp : '10.228.16.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-2-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 3
  addressSpace : '10.228.17.128/25'
  subnets : [
    '10.228.17.128/27'
    '10.228.17.160/27'
    '10.228.17.192/27'
    'NA'
  ]
  asn : 65003
  remoteAsn: 65013
  ownBgpIp : '10.228.17.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-3-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 4
  addressSpace : '10.228.18.0/25'
  subnets : [
    '10.228.18.0/27'
    '10.228.18.32/27'
    '10.228.18.64/27'
    'NA'
  ]
  asn : 65004
  remoteAsn: 65013
  ownBgpIp : '10.228.18.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-4-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 5
  addressSpace : '10.228.20.0/25'
  subnets : [
    '10.228.20.0/27'
    '10.228.20.32/27'
    '10.228.20.64/27'
    'NA'
  ]
  asn : 65005
  remoteAsn: 65013
  ownBgpIp : '10.228.20.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-5-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 6
  addressSpace : '10.228.20.128/25'
  subnets : [
    '10.228.20.128/27'
    '10.228.20.160/27'
    '10.228.20.192/27'
    'NA'
  ]
  asn : 65006
  remoteAsn: 65013
  ownBgpIp : '10.228.20.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-6-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 7
  addressSpace : '10.228.21.0/25'
  subnets : [
    '10.228.21.0/27'
    '10.228.21.32/27'
    '10.228.21.64/27'
    'NA'
  ]
  asn : 65007
  remoteAsn: 65013
  ownBgpIp : '10.228.21.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-7-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 8
  addressSpace : '10.228.21.128/25'
  subnets : [
    '10.228.21.128/27'
    '10.228.21.160/27'
    '10.228.21.192/27'
    'NA'
  ]
  asn : 65008
  remoteAsn: 65013
  ownBgpIp : '10.228.21.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-8-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 9
  addressSpace : '10.228.24.0/25'
  subnets : [
    '10.228.24.0/27'
    '10.228.24.32/27'
    '10.228.24.64/27'
    'NA'
  ]
  asn : 65009
  remoteAsn: 65013
  ownBgpIp : '10.228.24.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-9-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 10
  addressSpace : '10.228.24.128/25'
  subnets : [
    '10.228.24.128/27'
    '10.228.24.160/27'
    '10.228.24.192/27'
    'NA'
  ]
  asn : 65010
  remoteAsn: 65013
  ownBgpIp : '10.228.24.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-10-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 11
  addressSpace : '10.228.25.0/25'
  subnets : [
    '10.228.25.0/27'
    '10.228.25.32/27'
    '10.228.25.64/27'
    'NA'
  ]
  asn : 65011
  remoteAsn: 65013
  ownBgpIp : '10.228.25.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-11-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 12
  addressSpace : '10.228.25.128/25'
  subnets : [
    '10.228.25.128/27'
    '10.228.25.160/27'
    '10.228.25.192/27'
    'NA'
  ]
  asn : 65012
  remoteAsn: 65013
  ownBgpIp : '10.228.25.158'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-12-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 13
  addressSpace : '10.228.17.0/25'
  subnets : [
    '10.228.17.0/27'
    '10.228.17.32/27'
    '10.228.17.64/27'
    '10.228.17.96/27'
  ]
  asn : 65013
  ownBgpIp : '10.228.17.14'
  ownBgpIp2 : '10.228.17.15'
  vpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  vpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
{
  user : 14
  addressSpace : '10.228.26.0/25'
  subnets : [
    '10.228.26.0/27'
    '10.228.26.32/27'
    '10.228.26.64/27'
    'NA'
  ]
  asn : 65014
  remoteAsn: 65013
  ownBgpIp : '10.228.26.30'
  remoteBgpIp: '10.228.17.14'
  remoteBgpIp2: '10.228.17.15'
  vpnGatewayDnsPrefix : 'user-14-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix : 'proctor-${proctorId}-vpn-gw-pip'
  remoteVpnGatewayDnsPrefix2 : 'proctor-${proctorId}-vpn-gw-pip-2'
  dnsServer : '10.228.17.37'
}
]

var dnsServerIp = {
  dnsServers: [
    usersIpRanges[userIdIndex].dnsServer
  ]
}

var usersSubnets = [
  {
    name: 'GatewaySubnet'
    properties: {
      addressPrefix: usersIpRanges[userIdIndex].subnets[0]
    }
  }
  {
    name: 'jumpbox'
    properties: {
      addressPrefix: usersIpRanges[userIdIndex].subnets[1]
    }
  }
  {
    name: 'AzureBastionSubnet'
    properties: {
      addressPrefix: usersIpRanges[userIdIndex].subnets[2]
    }
  }
]

var routeServerSubnet = [
  {
    name: 'RouteServerSubnet'
    properties: {
      addressPrefix: usersIpRanges[userIdIndex].subnets[3]
    }
  }
]

resource adminVnet 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        usersIpRanges[userIdIndex].addressSpace
      ]
    }
    subnets: userId == 13 ? union(usersSubnets, routeServerSubnet) : usersSubnets
    dhcpOptions: dnsServer == 'default' ? json('null') : dnsServerIp
  }
}

output subnets array = adminVnet.properties.subnets
output usersIpRanges array = usersIpRanges
