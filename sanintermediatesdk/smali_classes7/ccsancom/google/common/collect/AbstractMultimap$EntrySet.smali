.class Lccsancom/google/common/collect/AbstractMultimap$EntrySet;
.super Lccsancom/google/common/collect/AbstractMultimap$Entries;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMultimap<",
        "TK;TV;>.Entries;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMultimap;

    .line 133
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$EntrySet;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMultimap$EntrySet;->this$0:Lccsancom/google/common/collect/AbstractMultimap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractMultimap$Entries;-><init>(Lccsancom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 141
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$EntrySet;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$EntrySet;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0}, Lccsancom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
