.class public final Lccsancom/mbridge/msdk/foundation/tools/s;
.super Ljava/lang/Object;
.source "SameSDCardTool.java"


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field public static c:[C

.field private static d:Z

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/s;->a:Z

    .line 27
    const-string v1, ""

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/s;->b:Ljava/lang/String;

    .line 28
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/s;->d:Z

    .line 30
    const/4 v0, -0x1

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/s;->e:I

    .line 31
    sput v0, Lccsancom/mbridge/msdk/foundation/tools/s;->f:I

    .line 33
    sput v0, Lccsancom/mbridge/msdk/foundation/tools/s;->g:I

    .line 34
    sput v0, Lccsancom/mbridge/msdk/foundation/tools/s;->h:I

    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/s;->c:[C

    return-void

    :array_0
    .array-data 2
        0x50s
        0x61s
        0x63s
        0x6bs
        0x61s
        0x67s
        0x65s
        0x4ds
        0x61s
        0x6es
        0x61s
        0x67s
        0x65s
        0x72s
    .end array-data
.end method

.method public static a()I
    .locals 9

    .line 154
    const-string v0, "freeExternalSize"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 155
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 157
    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v2, v6

    if-gtz v8, :cond_0

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/s;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 158
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->d()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lccsancom/mbridge/msdk/foundation/tools/s;->f:I

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameSDCardTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :goto_0
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/s;->f:I

    return v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 110
    nop

    .line 111
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    const/4 p0, 0x0

    .line 119
    :goto_0
    return-object p0
.end method

.method public static a(Lccsanandroid/content/Context;)V
    .locals 2

    .line 38
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/s;->d:Z

    if-nez v0, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/s;->b:Ljava/lang/String;

    .line 41
    nop

    .line 42
    nop

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/s;->a:Z

    .line 47
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/s;->b(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/s;->b:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/s;->b(Lccsanandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_0

    .line 52
    :catch_1
    move-exception p0

    .line 56
    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lccsancom/mbridge/msdk/foundation/tools/s;->d:Z

    .line 58
    :cond_0
    return-void
.end method

.method public static b()I
    .locals 5

    .line 234
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/s;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 236
    :try_start_0
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/s;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameSDCardTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_0
    :goto_0
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/s;->e:I

    return v0
.end method

.method private static b(Lccsanandroid/content/Context;)V
    .locals 1

    .line 63
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/s;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/b/d;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/b/d;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/b;)V

    .line 66
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a()Lccsancom/mbridge/msdk/foundation/same/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b()Z

    .line 67
    return-void
.end method

.method private static c(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 70
    nop

    .line 73
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/s;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    move-object v0, v1

    .line 82
    :goto_0
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    const-string v2, "common-exception"

    const-string v3, "hasSDCard is failed"

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_1
    move-object v0, v1

    :goto_1
    sget-boolean v2, Lccsancom/mbridge/msdk/foundation/tools/s;->a:Z

    if-eqz v2, :cond_5

    .line 87
    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/s;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1219
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->d()J

    move-result-wide v2

    const-wide/32 v4, 0x1e00000

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 92
    :goto_2
    if-nez v2, :cond_4

    .line 93
    goto :goto_3

    .line 92
    :cond_4
    move-object v1, v0

    goto :goto_3

    .line 86
    :cond_5
    move-object v1, v0

    .line 97
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 100
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Z
    .locals 2

    .line 140
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v0, ""

    const-string v1, "hasSDCard is failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static d()J
    .locals 6

    .line 174
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 177
    new-instance v3, Lccsanandroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lccsanandroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 179
    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    .line 180
    mul-long v0, v0, v4

    return-wide v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    return-wide v1

    .line 186
    :cond_0
    return-wide v1
.end method

.method private static e()J
    .locals 6

    .line 252
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 255
    new-instance v3, Lccsanandroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lccsanandroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 257
    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    .line 258
    mul-long v0, v0, v4

    return-wide v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    return-wide v1

    .line 265
    :cond_0
    return-wide v1
.end method
