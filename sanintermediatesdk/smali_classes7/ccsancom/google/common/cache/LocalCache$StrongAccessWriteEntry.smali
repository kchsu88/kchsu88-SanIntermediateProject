.class final Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;
.super Lccsancom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$StrongEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V
    .locals 3
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1071
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V

    .line 1076
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1089
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1102
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1116
    iput-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1129
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1142
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1072
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1080
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1093
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1133
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1106
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1120
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1085
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1086
    return-void
.end method

.method public setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1098
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1099
    return-void
.end method

.method public setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1138
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1139
    return-void
.end method

.method public setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1111
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1112
    return-void
.end method

.method public setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1151
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1152
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1125
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1126
    return-void
.end method
