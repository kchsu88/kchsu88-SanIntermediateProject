.class public final Lccsancom/mbridge/msdk/foundation/same/a/b;
.super Ljava/lang/Object;
.source "LruReplaceTempCache.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/foundation/same/a/c<",
        "Ljava/lang/String;",
        "Lccsanorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsanorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-lez p1, :cond_0

    .line 36
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->b:I

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 2

    .line 85
    :goto_0
    monitor-enter p0

    .line 86
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    if-nez v0, :cond_4

    .line 90
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 94
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    if-nez v0, :cond_2

    .line 96
    monitor-exit p0

    goto :goto_3

    .line 98
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    nop

    .line 3144
    nop

    .line 101
    nop

    .line 102
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanorg/json/JSONObject;

    .line 103
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    .line 107
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 108
    goto :goto_0

    .line 91
    :cond_3
    :goto_2
    monitor-exit p0

    .line 109
    :goto_3
    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 1

    .line 46
    if-eqz p1, :cond_0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 51
    monitor-exit p0

    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 1

    .line 135
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(I)V

    .line 136
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Z
    .locals 2

    .line 61
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    .line 1144
    nop

    .line 66
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget p1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    .line 2144
    nop

    .line 69
    sub-int/2addr p1, v1

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->c:I

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget p1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->b:I

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(I)V

    .line 73
    return v1

    .line 71
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lccsancom/mbridge/msdk/foundation/same/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
