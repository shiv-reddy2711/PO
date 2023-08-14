public class FirstClass  {
    public static void main(){
        // Create a new PermissionSet object
        PermissionSet ps = new PermissionSet();
        ps.Label = 'Object Access'; // Set the label of the permission set
        ps.Name = 'Object_Access'; // Set the name of the permission set
        List<ObjectPermissions> psList = new List<ObjectPermissions>();
        // Create a new ObjectPermissions object and set the object type
        ObjectPermissions objPermissions = new ObjectPermissions();
        objPermissions.SObjectType = 'Account';
        
        // Set the CRUD (create, read, update, delete) permissions for the object
        objPermissions.PermissionsCreate = true;
        objPermissions.PermissionsRead = true;
        objPermissions.PermissionsEdit = true;
        
        // Add the ObjectPermissions object to the permission set
        psList.add(objPermissions);
        
        // Insert the permission set
        insert psList;
        
        // Assign the permission set to a user
        PermissionSetAssignment psa = new PermissionSetAssignment();
        psa.AssigneeId = '005XXXXXXXXXXXX'; // Replace with the ID of the user to assign the permission set to
        psa.PermissionSetId = ps.Id;
        insert psa;
        
        
    }
    
}