.class final Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputContentInfoCompatApi25Impl"
.end annotation


# instance fields
.field final mObject:Lccsanandroid/view/inputmethod/InputContentInfo;


# direct methods
.method constructor <init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Lccsanandroid/net/Uri;
    .param p2, "description"    # Lccsanandroid/content/ClipDescription;
    .param p3, "linkUri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentUri",
            "description",
            "linkUri"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroid/view/inputmethod/InputContentInfo;-><init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V

    iput-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    .line 116
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputContentInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputContentInfo"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/inputmethod/InputContentInfo;

    iput-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    .line 111
    return-void
.end method


# virtual methods
.method public getContentUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 121
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Lccsanandroid/view/inputmethod/InputContentInfo;->getContentUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lccsanandroid/content/ClipDescription;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Lccsanandroid/view/inputmethod/InputContentInfo;->getDescription()Lccsanandroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentInfo()Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    return-object v0
.end method

.method public getLinkUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 133
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Lccsanandroid/view/inputmethod/InputContentInfo;->getLinkUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public releasePermission()V
    .locals 1

    .line 149
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Lccsanandroid/view/inputmethod/InputContentInfo;->releasePermission()V

    .line 150
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .line 144
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Lccsanandroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Lccsanandroid/view/inputmethod/InputContentInfo;->requestPermission()V

    .line 145
    return-void
.end method
