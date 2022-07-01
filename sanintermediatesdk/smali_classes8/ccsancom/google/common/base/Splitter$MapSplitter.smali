.class public final Lccsancom/google/common/base/Splitter$MapSplitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSplitter"
.end annotation


# static fields
.field private static final INVALID_ENTRY_MESSAGE:Ljava/lang/String; = "Chunk [%s] is not a valid entry"


# instance fields
.field private final entrySplitter:Lccsancom/google/common/base/Splitter;

.field private final outerSplitter:Lccsancom/google/common/base/Splitter;


# direct methods
.method private constructor <init>(Lccsancom/google/common/base/Splitter;Lccsancom/google/common/base/Splitter;)V
    .locals 1
    .param p1, "outerSplitter"    # Lccsancom/google/common/base/Splitter;
    .param p2, "entrySplitter"    # Lccsancom/google/common/base/Splitter;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lccsancom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lccsancom/google/common/base/Splitter;

    .line 486
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Splitter;

    iput-object v0, p0, Lccsancom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lccsancom/google/common/base/Splitter;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/base/Splitter;Lccsancom/google/common/base/Splitter;Lccsancom/google/common/base/Splitter$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/base/Splitter;
    .param p2, "x1"    # Lccsancom/google/common/base/Splitter;
    .param p3, "x2"    # Lccsancom/google/common/base/Splitter$1;

    .line 479
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/base/Splitter$MapSplitter;-><init>(Lccsancom/google/common/base/Splitter;Lccsancom/google/common/base/Splitter;)V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 502
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lccsancom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lccsancom/google/common/base/Splitter;

    invoke-virtual {v1, p1}, Lccsancom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lccsancom/google/common/base/Splitter;

    invoke-static {v3, v2}, Lccsancom/google/common/base/Splitter;->access$000(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v3

    .line 505
    .local v3, "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Chunk [%s] is not a valid entry"

    invoke-static {v4, v5, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 507
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const-string v7, "Duplicate key [%s] found."

    invoke-static {v6, v7, v4}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    invoke-static {v6, v5, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 511
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v7, v5, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 514
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 515
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
