.class final Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;
.super Lccsankotlin/io/FileTreeWalk$DirectoryState;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopDownDirectoryState"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;",
        "Lccsankotlin/io/FileTreeWalk$DirectoryState;",
        "rootDir",
        "Ljava/io/File;",
        "(Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "fileIndex",
        "",
        "fileList",
        "",
        "[Ljava/io/File;",
        "rootVisited",
        "",
        "step",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private fileIndex:I

.field private fileList:[Ljava/io/File;

.field private rootVisited:Z

.field final synthetic this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;


# direct methods
.method public constructor <init>(Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V
    .locals 1
    .param p1, "this$0"    # Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;
    .param p2, "rootDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {p0, p2}, Lccsankotlin/io/FileTreeWalk$DirectoryState;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public step()Ljava/io/File;
    .locals 10

    .line 166
    iget-boolean v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v0, v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v0}, Lccsankotlin/io/FileTreeWalk;->access$getOnEnter$p(Lccsankotlin/io/FileTreeWalk;)Lccsankotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-object v1

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    .line 173
    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v0, :cond_4

    iget v2, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    invoke-static {v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_2

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v0, v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v0}, Lccsankotlin/io/FileTreeWalk;->access$getOnLeave$p(Lccsankotlin/io/FileTreeWalk;)Lccsankotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/Unit;

    .line 191
    :cond_3
    return-object v1

    .line 175
    :cond_4
    :goto_0
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-nez v0, :cond_8

    .line 177
    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    .line 178
    if-nez v0, :cond_5

    .line 179
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v0, v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v0}, Lccsankotlin/io/FileTreeWalk;->access$getOnFail$p(Lccsankotlin/io/FileTreeWalk;)Lccsankotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v2

    new-instance v9, Lccsankotlin/io/AccessDeniedException;

    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v6, "Cannot list files in a directory"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lccsankotlin/io/AccessDeniedException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2, v9}, Lccsankotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/Unit;

    .line 181
    :cond_5
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_8

    .line 182
    :cond_6
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;

    iget-object v0, v0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lccsankotlin/io/FileTreeWalk;

    invoke-static {v0}, Lccsankotlin/io/FileTreeWalk;->access$getOnLeave$p(Lccsankotlin/io/FileTreeWalk;)Lccsankotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/Unit;

    .line 183
    :cond_7
    return-object v1

    .line 187
    :cond_8
    iget-object v0, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    invoke-static {v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lccsankotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
