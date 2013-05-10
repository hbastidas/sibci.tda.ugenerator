<?xml version="1.0" encoding="UTF-8"?>
<ncl id="genl" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<!--** Head **-->
	<head>
		<!--** Regions **-->
		<regionBase>
			<region id="rVideo-ts" left="0" top="0" width="100%" height="100%" />
			<region id="rLua"  left="0" top="0" width="100%" height="100%" />
		</regionBase>
		<!--** Descriptors **-->
		<descriptorBase>
			<descriptor id="dVideo-ts" region="rVideo-ts" />
			<descriptor id="dLua" region="rLua" focusIndex="appFocus"/>
		</descriptorBase>
		<!--** Connectors **-->
		<connectorBase>
			<causalConnector id="onEndAttributionSetN">
				<connectorParam name="value"/>
				<simpleCondition role="onEndAttribution"/>
				<simpleAction role="set" value="$value" max="unbounded" qualifier="par"/>
			</causalConnector>
		</connectorBase>
	</head>
	
	<!--** Body **-->
	<body>
		<!--** Ports **-->
		<port id="pVideo" component="video"/>
		<port id="pLua" component="mLua"/>
		<!--** Medias **-->
		<media id="varGlobal" type="application/x-ginga-settings">
			<property name="service.currentKeyMaster" value="appFocus"/>
			<property name="service.currentFocus" value="appFocus"/>
		</media>
		<media id="video" descriptor="dVideo-ts" src="sbtvd-ts://0">
			<property name="bounds"/>
		</media>
		<media id="mLua" src="" descriptor="dLua">
			<property name="decreaseVideo"/>
			<property name="increaseVideo"/>
			<property name="keepKeyMaster"/>
		</media>
		
		<!--** Links **-->
		<link xconnector="onEndAttributionSetN" id="lKeyBack">
			<bind role="onEndAttribution" component="mLua" interface="keepKeyMaster"/>
			<bind role="set" component="varGlobal" interface="service.currentKeyMaster">
				<bindParam name="value" value="mLua"/>				
			</bind>
		</link>
		<link xconnector="onEndAttributionSetN" id="lIncrease">
			<bind role="onEndAttribution" component="mLua" interface="increaseVideo"/>
			<bind role="set" component="video" interface="bounds">
				<bindParam name="value" value="0,0,100%,100%"/>
			</bind>		
		</link>
		<link xconnector="onEndAttributionSetN" id="lDecrease">
			<bind role="onEndAttribution" component="mLua" interface="decreaseVideo"/>
			<bind role="set" component="video" interface="bounds">
				<bindParam name="value" value="52%, 5%, 45%, 45%"/>
			</bind>		
		</link>
	</body>
</ncl>
