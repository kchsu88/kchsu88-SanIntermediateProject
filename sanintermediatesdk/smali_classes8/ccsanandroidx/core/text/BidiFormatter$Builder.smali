.class public final Lccsanandroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Lccsanandroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rtlContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtlContext"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-direct {p0, p1}, Lccsanandroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    .line 150
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Lccsanandroidx/core/text/BidiFormatter;
    .locals 1
    .param p0, "isRtlContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRtlContext"
        }
    .end annotation

    .line 198
    if-eqz p0, :cond_0

    sget-object v0, Lccsanandroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Lccsanandroidx/core/text/BidiFormatter;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsanandroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Lccsanandroidx/core/text/BidiFormatter;

    :goto_0
    return-object v0
.end method

.method private initialize(Z)V
    .locals 1
    .param p1, "isRtlContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRtlContext"
        }
    .end annotation

    .line 167
    iput-boolean p1, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 168
    sget-object v0, Lccsanandroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    iput-object v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    .line 170
    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/core/text/BidiFormatter;
    .locals 4

    .line 205
    iget v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    sget-object v1, Lccsanandroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Lccsanandroidx/core/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Lccsanandroidx/core/text/BidiFormatter;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lccsanandroidx/core/text/BidiFormatter;

    iget-boolean v1, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/core/text/BidiFormatter;-><init>(ZILccsanandroidx/core/text/TextDirectionHeuristicCompat;)V

    return-object v0
.end method

.method public setTextDirectionHeuristic(Lccsanandroidx/core/text/TextDirectionHeuristicCompat;)Lccsanandroidx/core/text/BidiFormatter$Builder;
    .locals 0
    .param p1, "heuristic"    # Lccsanandroidx/core/text/TextDirectionHeuristicCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heuristic"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 194
    return-object p0
.end method

.method public stereoReset(Z)Lccsanandroidx/core/text/BidiFormatter$Builder;
    .locals 1
    .param p1, "stereoReset"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stereoReset"
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lccsanandroidx/core/text/BidiFormatter$Builder;->mFlags:I

    .line 182
    :goto_0
    return-object p0
.end method
