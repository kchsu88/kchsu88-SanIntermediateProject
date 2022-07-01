.class Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;
.super Lccsanandroid/os/AsyncTask;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileExistenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    .line 49
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->file:Ljava/io/File;

    .line 51
    iput-object p2, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    .line 44
    invoke-direct {p0}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->clear()V

    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 71
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 56
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 61
    invoke-super {p0, p1}, Lccsanandroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;->status(Z)V

    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
