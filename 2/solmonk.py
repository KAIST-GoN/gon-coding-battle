# jungjik is best
# python still f**king long
nums,tens,tys=['','one','two','three','four','five','six','seven','eight','nine'],['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'],['','','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
print len(''.join([i%100==0 and nums[i/100]+'hundred' or ((i>99 and nums[i/100]+'hundredand' or '')+(9<i%100<20 and tens[i%100-10] or tys[i/10%10]+nums[i%10])) for i in range(1,1000)])+'onethousand')

