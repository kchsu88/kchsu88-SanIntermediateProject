.class public Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;
.super Ljava/lang/Object;
.source "CollectionsConcurrencyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToSet(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p0, "hashset"    # Ljava/util/HashSet;
    .param p1, "set"    # Ljava/lang/String;

    const-class v0, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    .line 11
    .end local p0    # "hashset":Ljava/util/HashSet;
    .end local p1    # "set":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-class v0, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;

    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 8
    .end local p0    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
