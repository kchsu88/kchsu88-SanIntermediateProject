.class Lccsancom/google/common/reflect/TypeToken$3;
.super Lccsancom/google/common/reflect/TypeVisitor;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/reflect/TypeToken;->rejectTypeVariables()Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/reflect/TypeToken;

    .line 854
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$3;, "Lccsancom/google/common/reflect/TypeToken$3;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$3;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lccsancom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;

    .line 875
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$3;, "Lccsancom/google/common/reflect/TypeToken$3;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 876
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;

    .line 869
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$3;, "Lccsancom/google/common/reflect/TypeToken$3;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 870
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 871
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 857
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$3;, "Lccsancom/google/common/reflect/TypeToken$3;"
    .local p1, "type":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/google/common/reflect/TypeToken$3;->this$0:Lccsancom/google/common/reflect/TypeToken;

    .line 858
    invoke-static {v2}, Lccsancom/google/common/reflect/TypeToken;->access$500(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "contains a type variable and is not safe for the operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/WildcardType;

    .line 863
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$3;, "Lccsancom/google/common/reflect/TypeToken$3;"
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 864
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 865
    return-void
.end method
