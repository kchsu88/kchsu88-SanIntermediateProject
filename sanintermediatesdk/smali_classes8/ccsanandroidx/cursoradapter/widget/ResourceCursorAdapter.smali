.class public abstract Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Lccsanandroidx/cursoradapter/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Lccsanandroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;ILccsanandroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Lccsanandroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1, p3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;-><init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V

    .line 55
    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/LayoutInflater;

    iput-object v0, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;ILccsanandroid/database/Cursor;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Lccsanandroid/database/Cursor;
    .param p4, "flags"    # I

    .line 99
    invoke-direct {p0, p1, p3, p4}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;-><init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V

    .line 100
    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/LayoutInflater;

    iput-object v0, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 102
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;ILccsanandroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Lccsanandroid/database/Cursor;
    .param p4, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p3, p4}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;-><init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Z)V

    .line 83
    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 84
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/LayoutInflater;

    iput-object v0, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 85
    return-void
.end method


# virtual methods
.method public newDropDownView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cursor"    # Lccsanandroid/database/Cursor;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget v1, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cursor"    # Lccsanandroid/database/Cursor;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget v1, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .param p1, "dropDownLayout"    # I

    .line 135
    iput p1, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    .line 136
    return-void
.end method

.method public setViewResource(I)V
    .locals 0
    .param p1, "layout"    # I

    .line 126
    iput p1, p0, Lccsanandroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 127
    return-void
.end method
