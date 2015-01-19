students1 = ["May","Per","Karrin","Nick","Amma","Noddles","Ruby"]

students2 = ["May","Per","Karrin","Nick","Amma","Noddles"]


def group_split(array, n_per_group)
  group = []
  array.each_slice(n_per_group){|a| group << a}
  if group[-1].count < n_per_group
    (group[-2] << group[-1]).flatten!
    group.pop
  end
  group
end




p group_split(students2, 3)
p group_split(students2, 4)
p group_split(students1, 3)
