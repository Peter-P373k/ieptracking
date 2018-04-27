 <?php
  $select_query=          "Select name from category";
        $select_query_run =     mysql_query($select_query);
        while   ($select_query_array=   mysql_fetch_array($select_query_run) )
        {
            foreach ($select_query_array as $select_query_display)
            {
                echo "  
                    <select>
                        <option value='' >$select_query_display</option>                        
                    </select>
                ";


                }

            }
?>