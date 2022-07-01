.class public final Lccsancom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lccsancom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 40
    new-instance v0, Lccsancom/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lccsancom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lccsancom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    sget-object v0, Lccsancom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    .line 49
    iput v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 52
    new-instance v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lccsancom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->header:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    move-object v0, p1

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lccsancom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_0
    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 75
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 208
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private rebalance(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 13
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_14

    .line 312
    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 313
    .local v1, "left":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 314
    .local v2, "right":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v4, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 315
    .local v4, "leftHeight":I
    :goto_1
    if-eqz v2, :cond_1

    iget v5, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 317
    .local v5, "rightHeight":I
    :goto_2
    sub-int v6, v4, v5

    .line 318
    .local v6, "delta":I
    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v6, v7, :cond_8

    .line 319
    iget-object v7, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 320
    .local v7, "rightLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v10, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 321
    .local v10, "rightRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_2

    iget v11, v10, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 322
    .local v11, "rightRightHeight":I
    :goto_3
    if-eqz v7, :cond_3

    iget v3, v7, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 324
    .local v3, "rightLeftHeight":I
    :cond_3
    sub-int v12, v3, v11

    .line 325
    .local v12, "rightDelta":I
    if-eq v12, v8, :cond_6

    if-nez v12, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 328
    :cond_4
    if-ne v12, v9, :cond_5

    .line 329
    invoke-direct {p0, v2}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateRight(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 330
    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_5

    .line 328
    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 326
    :cond_6
    :goto_4
    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 332
    :goto_5
    if-eqz p2, :cond_7

    .line 333
    goto :goto_b

    .line 336
    .end local v3    # "rightLeftHeight":I
    .end local v7    # "rightLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v10    # "rightRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v11    # "rightRightHeight":I
    .end local v12    # "rightDelta":I
    :cond_7
    goto :goto_a

    :cond_8
    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 337
    iget-object v7, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 338
    .local v7, "leftLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v10, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 339
    .local v10, "leftRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_9

    iget v11, v10, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 340
    .local v11, "leftRightHeight":I
    :goto_6
    if-eqz v7, :cond_a

    iget v3, v7, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 342
    .local v3, "leftLeftHeight":I
    :cond_a
    sub-int v12, v3, v11

    .line 343
    .local v12, "leftDelta":I
    if-eq v12, v9, :cond_d

    if-nez v12, :cond_b

    if-nez p2, :cond_b

    goto :goto_7

    .line 346
    :cond_b
    if-ne v12, v8, :cond_c

    .line 347
    invoke-direct {p0, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 348
    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateRight(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_8

    .line 346
    :cond_c
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 344
    :cond_d
    :goto_7
    invoke-direct {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->rotateRight(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 350
    :goto_8
    if-eqz p2, :cond_e

    .line 351
    goto :goto_b

    .line 354
    .end local v3    # "leftLeftHeight":I
    .end local v7    # "leftLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v10    # "leftRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v11    # "leftRightHeight":I
    .end local v12    # "leftDelta":I
    :cond_e
    goto :goto_a

    :cond_f
    if-nez v6, :cond_10

    .line 355
    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 356
    if-eqz p2, :cond_13

    .line 357
    goto :goto_b

    .line 361
    :cond_10
    if-eq v6, v8, :cond_12

    if-ne v6, v9, :cond_11

    goto :goto_9

    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 362
    :cond_12
    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 363
    if-nez p2, :cond_13

    .line 364
    goto :goto_b

    .line 311
    .end local v1    # "left":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v5    # "rightHeight":I
    .end local v6    # "delta":I
    :cond_13
    :goto_a
    iget-object v0, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto/16 :goto_0

    .line 368
    .end local v0    # "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_14
    :goto_b
    return-void
.end method

.method private replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 286
    .local v0, "parent":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iput-object v0, p2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 291
    :cond_0
    if-eqz v0, :cond_3

    .line 292
    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_1

    .line 293
    iput-object p2, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_2

    .line 296
    iput-object p2, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 299
    :cond_3
    iput-object p2, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->root:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 301
    :goto_0
    return-void
.end method

.method private rotateLeft(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 374
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 375
    .local v0, "left":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 376
    .local v1, "pivot":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 377
    .local v2, "pivotLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 380
    .local v3, "pivotRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 381
    if-eqz v2, :cond_0

    .line 382
    iput-object p1, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 388
    iput-object p1, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 389
    iput-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 392
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v5, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 393
    :goto_0
    if-eqz v2, :cond_2

    iget v6, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 392
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 394
    iget v5, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 395
    if-eqz v3, :cond_3

    iget v4, v3, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 394
    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 396
    return-void
.end method

.method private rotateRight(Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 402
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 403
    .local v0, "pivot":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 404
    .local v1, "right":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 405
    .local v2, "pivotLeft":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 408
    .local v3, "pivotRight":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v3, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 409
    if-eqz v3, :cond_0

    .line 410
    iput-object p1, v3, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 416
    iput-object p1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 417
    iput-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 420
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 421
    :goto_0
    if-eqz v3, :cond_2

    iget v6, v3, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 420
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 422
    iget v5, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 423
    if-eqz v2, :cond_3

    iget v4, v2, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 422
    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 424
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 628
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 101
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->root:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    .line 103
    iget v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 106
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->header:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 107
    .local v0, "header":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v0, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 87
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->entrySet:Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 431
    .local v0, "result":Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v1, p0}, Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lccsancom/google/gson/internal/LinkedTreeMap;)V

    iput-object v1, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->entrySet:Lccsancom/google/gson/internal/LinkedTreeMap$EntrySet;

    :goto_0
    return-object v1
.end method

.method find(Ljava/lang/Object;Z)Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .locals 7
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 123
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->root:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 124
    .local v1, "nearest":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    .line 126
    .local v2, "comparison":I
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 129
    sget-object v4, Lccsancom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v4, :cond_0

    .line 130
    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_0

    .line 131
    :cond_0
    move-object v4, v3

    :goto_0
    nop

    .line 134
    .local v4, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_1
    if-eqz v4, :cond_1

    .line 135
    iget-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_2

    .line 136
    :cond_1
    iget-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_2
    move v2, v5

    .line 139
    if-nez v2, :cond_2

    .line 140
    return-object v1

    .line 144
    :cond_2
    if-gez v2, :cond_3

    iget-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_3

    :cond_3
    iget-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 145
    .local v5, "child":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_3
    if-nez v5, :cond_4

    .line 146
    goto :goto_4

    .line 149
    :cond_4
    move-object v1, v5

    .line 150
    .end local v5    # "child":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    goto :goto_1

    .line 154
    .end local v4    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_5
    :goto_4
    if-nez p2, :cond_6

    .line 155
    return-object v3

    .line 159
    :cond_6
    iget-object v3, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->header:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 161
    .local v3, "header":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v4, 0x1

    if-nez v1, :cond_9

    .line 163
    sget-object v5, Lccsancom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v5, :cond_8

    instance-of v5, p1, Ljava/lang/Comparable;

    if-eqz v5, :cond_7

    goto :goto_5

    .line 164
    :cond_7
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not Comparable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_8
    :goto_5
    new-instance v5, Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v6, v3, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v5, v1, p1, v3, v6}, Lccsancom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 167
    .local v5, "created":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v5, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->root:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_7

    .line 169
    .end local v5    # "created":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_9
    new-instance v5, Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v6, v3, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v5, v1, p1, v3, v6}, Lccsancom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 170
    .restart local v5    # "created":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-gez v2, :cond_a

    .line 171
    iput-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_6

    .line 173
    :cond_a
    iput-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 175
    :goto_6
    invoke-direct {p0, v1, v4}, Lccsancom/google/gson/internal/LinkedTreeMap;->rebalance(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 177
    :goto_7
    iget v6, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/2addr v6, v4

    iput v6, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    .line 178
    iget v6, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 180
    return-object v5
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 203
    .local v0, "mine":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    .local v1, "valuesEqual":Z
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method findByObject(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0

    .line 186
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 83
    .local v0, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->keySet:Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 436
    .local v0, "result":Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v1, p0}, Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lccsancom/google/gson/internal/LinkedTreeMap;)V

    iput-object v1, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->keySet:Lccsancom/google/gson/internal/LinkedTreeMap$KeySet;

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 95
    .local v0, "created":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 96
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 97
    return-object v1

    .line 92
    .end local v0    # "created":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 112
    .local v0, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method removeInternal(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 7
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 218
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 220
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->prev:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 223
    :cond_0
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 224
    .local v0, "left":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 225
    .local v1, "right":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 226
    .local v2, "originalParent":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 237
    iget v5, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v6, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v5, v6, :cond_1

    invoke-virtual {v0}, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->last()Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->first()Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v5

    .line 238
    .local v5, "adjacent":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v5, v3}, Lccsancom/google/gson/internal/LinkedTreeMap;->removeInternal(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "leftHeight":I
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 242
    if-eqz v0, :cond_2

    .line 243
    iget v3, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 244
    iput-object v0, v5, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 245
    iput-object v5, v0, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 246
    iput-object v4, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 249
    :cond_2
    const/4 v6, 0x0

    .line 250
    .local v6, "rightHeight":I
    iget-object v1, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 251
    if-eqz v1, :cond_3

    .line 252
    iget v6, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 253
    iput-object v1, v5, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 254
    iput-object v5, v1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->parent:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 255
    iput-object v4, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    .line 258
    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 259
    invoke-direct {p0, p1, v5}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 260
    return-void

    .line 261
    .end local v3    # "leftHeight":I
    .end local v5    # "adjacent":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v6    # "rightHeight":I
    :cond_4
    if-eqz v0, :cond_5

    .line 262
    invoke-direct {p0, p1, v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 263
    iput-object v4, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->left:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    .line 264
    :cond_5
    if-eqz v1, :cond_6

    .line 265
    invoke-direct {p0, p1, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 266
    iput-object v4, p1, Lccsancom/google/gson/internal/LinkedTreeMap$Node;->right:Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    .line 268
    :cond_6
    invoke-direct {p0, p1, v4}, Lccsancom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Lccsancom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 271
    :goto_1
    invoke-direct {p0, v2, v3}, Lccsancom/google/gson/internal/LinkedTreeMap;->rebalance(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 272
    iget v3, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    .line 273
    iget v3, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 274
    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lccsancom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 278
    .local v0, "node":Lccsancom/google/gson/internal/LinkedTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->removeInternal(Lccsancom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 281
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    .local p0, "this":Lccsancom/google/gson/internal/LinkedTreeMap;, "Lccsancom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
