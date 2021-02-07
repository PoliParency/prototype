from csv import reader, writer

with open('cleanVotes1.csv','w') as output:
    
    writer = writer(output)

    with open('MemberVotes1.csv') as read_obj:

        csv_reader = reader(read_obj, delimiter= '\n')
        header = next(csv_reader)
        # Check file as empty
        if header != None:
            # Iterate over each row after the header in the csv
            for row in csv_reader:
                
                # row[0] gives a string of the whole line
                
                # check if there are quotes
                if(row[0].count(',') == 15):

                    output.write(row[0])
                    output.write('\n')

                else:

                    split = row[0].partition("\"")
                    output.write(split[0])
                    # print(split[2])
                    
                    center = (split[2]).partition("\"")
                    comma_killer = center[0].replace(',','')
                    output.write(comma_killer)
                    # print(comma_killer)

                    output.write(center[2])
                    # print(center[2])
                    
                    output.write('\n')


                

        
