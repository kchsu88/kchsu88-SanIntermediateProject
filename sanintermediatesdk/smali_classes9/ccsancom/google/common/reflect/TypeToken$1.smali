.class Lccsancom/google/common/reflect/TypeToken$1;
.super Lccsancom/google/common/reflect/Invokable$MethodInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/reflect/TypeToken;->method(Ljava/lang/reflect/Method;)Lccsancom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/reflect/Invokable$MethodInvokable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/reflect/TypeToken;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 584
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$1;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lccsancom/google/common/reflect/Invokable$MethodInvokable;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 597
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$1;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-static {v0}, Lccsancom/google/common/reflect/TypeToken;->access$000(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lccsancom/google/common/reflect/Invokable$MethodInvokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 592
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$1;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-static {v0}, Lccsancom/google/common/reflect/TypeToken;->access$100(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lccsancom/google/common/reflect/Invokable$MethodInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 2

    .line 587
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$1;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-static {v0}, Lccsancom/google/common/reflect/TypeToken;->access$000(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lccsancom/google/common/reflect/Invokable$MethodInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lccsancom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$1;->this$0:Lccsancom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 607
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$1;, "Lccsancom/google/common/reflect/TypeToken$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$1;->getOwnerType()Lccsancom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lccsancom/google/common/reflect/Invokable$MethodInvokable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
