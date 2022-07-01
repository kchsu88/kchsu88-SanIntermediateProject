.class Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreQAutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private mDoAfterTextChanged:Ljava/lang/reflect/Method;

.field private mDoBeforeTextChanged:Ljava/lang/reflect/Method;

.field private mEnsureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2043
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2044
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    .line 2050
    invoke-static {}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2052
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lccsanandroid/widget/AutoCompleteTextView;

    const-string v3, "doBeforeTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2053
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2054
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    goto :goto_0

    .line 2055
    :catch_0
    move-exception v2

    .line 2059
    :goto_0
    :try_start_1
    const-class v2, Lccsanandroid/widget/AutoCompleteTextView;

    const-string v3, "doAfterTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2060
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2061
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2064
    goto :goto_1

    .line 2062
    :catch_1
    move-exception v2

    .line 2066
    :goto_1
    :try_start_2
    const-class v2, Lccsanandroid/widget/AutoCompleteTextView;

    const-string v3, "ensureImeVisible"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 2067
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    .line 2068
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2071
    goto :goto_2

    .line 2069
    :catch_2
    move-exception v0

    .line 2072
    :goto_2
    return-void
.end method

.method private static preApi29Check()V
    .locals 2

    .line 2105
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 2109
    return-void

    .line 2106
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    const-string v1, "This function can only be used for API Level < 29."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method doAfterTextChanged(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 2085
    invoke-static {}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2086
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2088
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    goto :goto_0

    .line 2089
    :catch_0
    move-exception v0

    .line 2092
    :cond_0
    :goto_0
    return-void
.end method

.method doBeforeTextChanged(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 2075
    invoke-static {}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2076
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2078
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    goto :goto_0

    .line 2079
    :catch_0
    move-exception v0

    .line 2082
    :cond_0
    :goto_0
    return-void
.end method

.method ensureImeVisible(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 2095
    invoke-static {}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2096
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2098
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    goto :goto_0

    .line 2099
    :catch_0
    move-exception v0

    .line 2102
    :cond_0
    :goto_0
    return-void
.end method
