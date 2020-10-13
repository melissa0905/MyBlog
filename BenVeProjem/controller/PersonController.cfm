
<cfscript>
if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();
		
		WOStruct['#attributes.fuseaction#'] = structNew();	
		
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.book';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 'sales.book&event=add';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = 'calismalar/BenVeProjem/kitap_list.cfm';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 1;

		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.cartoons&event=add';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = 'calismalar/BenVeProjem/kitap_list.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = 'calismalar/BenVeProjem/action/bookadd.cfm';
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];

		if (isDefined("attributes.id")) {

		WOStruct['#attributes.fuseaction#']['upd'] = structNew();
		WOStruct['#attributes.fuseaction#']['upd']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['upd']['fuseaction'] = 'sales.book&event=upd';
		WOStruct['#attributes.fuseaction#']['upd']['filePath'] = 'calismalar/BenVeProjem/kitap_upd.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['queryPath'] = 'calismalar/BenVeProjem/actions/bookupd.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];

		}
		
	}
	
</cfscript>
