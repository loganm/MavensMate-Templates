/**
 * Class encapsulates query logic for {{ object_name }}
 *
 * https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Selector_Layer
 **/
public class {{ api_name }} extends fflib_SObjectSelector
{
	public List<Schema.SObjectField> getSObjectFieldList()
	{
		return getSObjectType().getDescribe().fields.getMap().values();
	}

	public Schema.SObjectType getSObjectType()
	{
		return {{ object_name }}.sObjectType;
	}

	public List<{{ object_name }}> selectById(Set<ID> idSet)
	{
		return (List<{{ object_name }}>) selectSObjectsById(idSet);
	}
}
