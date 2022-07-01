.class public Lccsanandroidx/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lccsanandroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lccsanandroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 46
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lccsanandroidx/transition/TransitionInflater;->CONSTRUCTORS:Lccsanandroidx/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    .line 52
    return-void
.end method

.method private createCustom(Lccsanandroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/AttributeSet;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 194
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lccsanandroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 201
    :try_start_0
    sget-object v1, Lccsanandroidx/transition/TransitionInflater;->CONSTRUCTORS:Lccsanandroidx/collection/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 203
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 205
    iget-object v5, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v5}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 206
    invoke-virtual {v5, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 207
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 208
    sget-object v6, Lccsanandroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v2, v6

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 210
    invoke-virtual {v1, v0, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 215
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "className":Ljava/lang/String;
    .end local p1    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local p2    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "tag":Ljava/lang/String;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    .restart local v0    # "className":Ljava/lang/String;
    .restart local p1    # "attrs":Lccsanandroid/util/AttributeSet;
    .restart local p2    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lccsanandroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lccsanandroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tag must have a \'class\' attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createTransitionFromXml(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/Transition;
    .locals 8
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "parent"    # Lccsanandroidx/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    .line 121
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 123
    .local v1, "depth":I
    instance-of v2, p3, Lccsanandroidx/transition/TransitionSet;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lccsanandroidx/transition/TransitionSet;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 126
    .local v2, "transitionSet":Lccsanandroidx/transition/TransitionSet;
    :goto_0
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_19

    :cond_1
    const/4 v3, 0x1

    if-eq v4, v3, :cond_19

    .line 129
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "name":Ljava/lang/String;
    const-string v5, "fade"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    new-instance v5, Lccsanandroidx/transition/Fade;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/Fade;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 136
    :cond_3
    const-string v5, "changeBounds"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    new-instance v5, Lccsanandroidx/transition/ChangeBounds;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ChangeBounds;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 138
    :cond_4
    const-string/jumbo v5, "slide"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    new-instance v5, Lccsanandroidx/transition/Slide;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/Slide;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 140
    :cond_5
    const-string v5, "explode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    new-instance v5, Lccsanandroidx/transition/Explode;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/Explode;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 142
    :cond_6
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    new-instance v5, Lccsanandroidx/transition/ChangeImageTransform;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ChangeImageTransform;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 144
    :cond_7
    const-string v5, "changeTransform"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 145
    new-instance v5, Lccsanandroidx/transition/ChangeTransform;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ChangeTransform;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 146
    :cond_8
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    new-instance v5, Lccsanandroidx/transition/ChangeClipBounds;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ChangeClipBounds;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 148
    :cond_9
    const-string v5, "autoTransition"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 149
    new-instance v5, Lccsanandroidx/transition/AutoTransition;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/AutoTransition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 150
    :cond_a
    const-string v5, "changeScroll"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 151
    new-instance v5, Lccsanandroidx/transition/ChangeScroll;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ChangeScroll;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 152
    :cond_b
    const-string/jumbo v5, "transitionSet"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 153
    new-instance v5, Lccsanandroidx/transition/TransitionSet;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/TransitionSet;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 154
    :cond_c
    const-string/jumbo v5, "transition"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 155
    const-class v6, Lccsanandroidx/transition/Transition;

    invoke-direct {p0, p2, v6, v5}, Lccsanandroidx/transition/TransitionInflater;->createCustom(Lccsanandroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lccsanandroidx/transition/Transition;

    goto :goto_1

    .line 156
    :cond_d
    const-string/jumbo v5, "targets"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/transition/TransitionInflater;->getTargetIds(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroidx/transition/Transition;)V

    goto :goto_1

    .line 158
    :cond_e
    const-string v5, "arcMotion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 159
    if-eqz p3, :cond_f

    .line 162
    new-instance v5, Lccsanandroidx/transition/ArcMotion;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/ArcMotion;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    goto :goto_1

    .line 160
    :cond_f
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of arcMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_10
    const-string v5, "pathMotion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 164
    if-eqz p3, :cond_11

    .line 167
    const-class v6, Lccsanandroidx/transition/PathMotion;

    invoke-direct {p0, p2, v6, v5}, Lccsanandroidx/transition/TransitionInflater;->createCustom(Lccsanandroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/transition/PathMotion;

    invoke-virtual {p3, v5}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    goto :goto_1

    .line 165
    :cond_11
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of pathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_12
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 170
    if-eqz p3, :cond_17

    .line 173
    new-instance v5, Lccsanandroidx/transition/PatternPathMotion;

    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v5, v6, p2}, Lccsanandroidx/transition/PatternPathMotion;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    invoke-virtual {p3, v5}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    .line 177
    :goto_1
    if-eqz v0, :cond_16

    .line 178
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-nez v5, :cond_13

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/transition/TransitionInflater;->createTransitionFromXml(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/Transition;

    .line 181
    :cond_13
    if-eqz v2, :cond_14

    .line 182
    invoke-virtual {v2, v0}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 183
    const/4 v0, 0x0

    goto :goto_2

    .line 184
    :cond_14
    if-nez p3, :cond_15

    goto :goto_2

    .line 185
    :cond_15
    new-instance v5, Lccsanandroid/view/InflateException;

    const-string v6, "Could not add transition to another transition."

    invoke-direct {v5, v6}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v3    # "name":Ljava/lang/String;
    :cond_16
    :goto_2
    goto/16 :goto_0

    .line 171
    .restart local v3    # "name":Ljava/lang/String;
    :cond_17
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid use of patternPathMotion element"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_18
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    .end local v3    # "name":Ljava/lang/String;
    :cond_19
    return-object v0
.end method

.method private createTransitionManagerFromXml(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/TransitionManager;
    .locals 7
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 289
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 291
    .local v1, "transitionManager":Lccsanandroidx/transition/TransitionManager;
    :goto_0
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_4

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_4

    .line 294
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 295
    goto :goto_0

    .line 298
    :cond_1
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "transitionManager"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    new-instance v4, Lccsanandroidx/transition/TransitionManager;

    invoke-direct {v4}, Lccsanandroidx/transition/TransitionManager;-><init>()V

    move-object v1, v4

    goto :goto_1

    .line 301
    :cond_2
    const-string/jumbo v4, "transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 302
    invoke-direct {p0, p2, p1, p3, v1}, Lccsanandroidx/transition/TransitionInflater;->loadTransition(Lccsanandroid/util/AttributeSet;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionManager;)V

    .line 306
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 304
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 307
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static from(Lccsanandroid/content/Context;)Lccsanandroidx/transition/TransitionInflater;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 58
    new-instance v0, Lccsanandroidx/transition/TransitionInflater;

    invoke-direct {v0, p0}, Lccsanandroidx/transition/TransitionInflater;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroidx/transition/Transition;)V
    .locals 11
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "transition"    # Lccsanandroidx/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 231
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_9

    :cond_0
    const/4 v1, 0x1

    if-eq v2, v1, :cond_9

    .line 234
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "target"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 240
    iget-object v6, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    sget-object v7, Lccsanandroidx/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v6, p2, v7}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v6

    .line 241
    .local v6, "a":Lccsanandroid/content/res/TypedArray;
    const-string/jumbo v7, "targetId"

    const/4 v8, 0x0

    invoke-static {v6, p1, v7, v1, v8}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 244
    .local v7, "id":I
    if-eqz v7, :cond_2

    .line 245
    invoke-virtual {p3, v7}, Lccsanandroidx/transition/Transition;->addTarget(I)Lccsanandroidx/transition/Transition;

    goto :goto_2

    .line 246
    :cond_2
    const-string v9, "excludeId"

    invoke-static {v6, p1, v9, v4, v8}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    move v7, v4

    if-eqz v4, :cond_3

    .line 248
    invoke-virtual {p3, v7, v1}, Lccsanandroidx/transition/Transition;->excludeTarget(IZ)Lccsanandroidx/transition/Transition;

    goto :goto_2

    .line 249
    :cond_3
    const/4 v4, 0x4

    const-string/jumbo v9, "targetName"

    invoke-static {v6, p1, v9, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .local v9, "transitionName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 251
    invoke-virtual {p3, v9}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;

    goto :goto_2

    .line 252
    :cond_4
    const/4 v4, 0x5

    const-string v10, "excludeName"

    invoke-static {v6, p1, v10, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    if-eqz v4, :cond_5

    .line 254
    invoke-virtual {p3, v9, v1}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Lccsanandroidx/transition/Transition;

    goto :goto_2

    .line 256
    :cond_5
    const-string v4, "excludeClass"

    invoke-static {v6, p1, v4, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 260
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 261
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3, v4, v1}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Lccsanandroidx/transition/Transition;

    .line 262
    nop

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    :cond_6
    const-string/jumbo v1, "targetClass"

    invoke-static {v6, p1, v1, v8}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_7

    .line 264
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 265
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3, v1}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    :goto_1
    nop

    .line 272
    .end local v3    # "className":Ljava/lang/String;
    .end local v9    # "transitionName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 273
    .end local v6    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v7    # "id":I
    nop

    .line 276
    .end local v5    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 267
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "a":Lccsanandroid/content/res/TypedArray;
    .restart local v7    # "id":I
    .restart local v9    # "transitionName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 269
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 274
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v7    # "id":I
    .end local v9    # "transitionName":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown scene name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private loadTransition(Lccsanandroid/util/AttributeSet;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionManager;)V
    .locals 10
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p3, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p4, "transitionManager"    # Lccsanandroidx/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    sget-object v1, Lccsanandroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const-string/jumbo v1, "transition"

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v0, p2, v1, v2, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 318
    .local v1, "transitionId":I
    const-string v2, "fromScene"

    const/4 v4, 0x0

    invoke-static {v0, p2, v2, v4, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 320
    .local v2, "fromId":I
    const/4 v4, 0x0

    if-gez v2, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-static {p3, v2, v5}, Lccsanandroidx/transition/Scene;->getSceneForLayout(Lccsanandroid/view/ViewGroup;ILccsanandroid/content/Context;)Lccsanandroidx/transition/Scene;

    move-result-object v5

    .line 322
    .local v5, "fromScene":Lccsanandroidx/transition/Scene;
    :goto_0
    const/4 v6, 0x1

    const-string/jumbo v7, "toScene"

    invoke-static {v0, p2, v7, v6, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 324
    .local v3, "toId":I
    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-static {p3, v3, v4}, Lccsanandroidx/transition/Scene;->getSceneForLayout(Lccsanandroid/view/ViewGroup;ILccsanandroid/content/Context;)Lccsanandroidx/transition/Scene;

    move-result-object v4

    .line 326
    .local v4, "toScene":Lccsanandroidx/transition/Scene;
    :goto_1
    if-ltz v1, :cond_4

    .line 327
    invoke-virtual {p0, v1}, Lccsanandroidx/transition/TransitionInflater;->inflateTransition(I)Lccsanandroidx/transition/Transition;

    move-result-object v6

    .line 328
    .local v6, "transition":Lccsanandroidx/transition/Transition;
    if-eqz v6, :cond_4

    .line 329
    if-eqz v4, :cond_3

    .line 332
    if-nez v5, :cond_2

    .line 333
    invoke-virtual {p4, v4, v6}, Lccsanandroidx/transition/TransitionManager;->setTransition(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V

    goto :goto_2

    .line 335
    :cond_2
    invoke-virtual {p4, v5, v4, v6}, Lccsanandroidx/transition/TransitionManager;->setTransition(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V

    goto :goto_2

    .line 330
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No toScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 339
    .end local v6    # "transition":Lccsanandroidx/transition/Transition;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 340
    return-void
.end method


# virtual methods
.method public inflateTransition(I)Lccsanandroidx/transition/Transition;
    .locals 5
    .param p1, "resource"    # I

    .line 70
    iget-object v0, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 72
    .local v0, "parser":Lccsanandroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v0}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lccsanandroidx/transition/TransitionInflater;->createTransitionFromXml(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/Transition;

    move-result-object v1
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 72
    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lccsanandroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p1    # "resource":I
    throw v2

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p1    # "resource":I
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lccsanandroid/view/InflateException;

    invoke-virtual {v1}, Lccsanorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p1    # "resource":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v1    # "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p1    # "resource":I
    :goto_0
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 80
    throw v1
.end method

.method public inflateTransitionManager(ILccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/TransitionManager;
    .locals 5
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 92
    iget-object v0, p0, Lccsanandroidx/transition/TransitionInflater;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 94
    .local v0, "parser":Lccsanandroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v0}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lccsanandroidx/transition/TransitionInflater;->createTransitionManagerFromXml(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/TransitionManager;

    move-result-object v1
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 94
    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lccsanandroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "ex":Lccsanandroid/view/InflateException;
    invoke-virtual {v2, v1}, Lccsanandroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    nop

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p1    # "resource":I
    .end local p2    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    throw v2

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Lccsanandroid/view/InflateException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p1    # "resource":I
    .restart local p2    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lccsanandroid/view/InflateException;

    invoke-virtual {v1}, Lccsanorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v2    # "ex":Lccsanandroid/view/InflateException;
    invoke-virtual {v2, v1}, Lccsanandroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 98
    nop

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p1    # "resource":I
    .end local p2    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v1    # "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Lccsanandroid/view/InflateException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p1    # "resource":I
    .restart local p2    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    :goto_0
    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 107
    throw v1
.end method
