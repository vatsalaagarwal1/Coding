select p.Id,
case when p.p_Id is null then 'Root'
    when p.Id in (select distinct t.p_Id from Tree t) then 'Inner'
    else 'Leaf' end as Type
    from Tree p;