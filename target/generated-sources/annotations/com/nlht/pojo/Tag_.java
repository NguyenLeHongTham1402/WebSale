package com.nlht.pojo;

import com.nlht.pojo.ProTag;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2023-03-06T10:36:03")
@StaticMetamodel(Tag.class)
public class Tag_ { 

    public static volatile SingularAttribute<Tag, String> name;
    public static volatile SingularAttribute<Tag, Integer> id;
    public static volatile SetAttribute<Tag, ProTag> proTagSet;

}