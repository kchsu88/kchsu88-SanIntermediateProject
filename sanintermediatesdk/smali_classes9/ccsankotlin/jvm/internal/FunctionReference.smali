.class public Lccsankotlin/jvm/internal/FunctionReference;
.super Lccsankotlin/jvm/internal/CallableReference;
.source "FunctionReference.java"

# interfaces
.implements Lccsankotlin/jvm/internal/FunctionBase;
.implements Lccsankotlin/reflect/KFunction;


# instance fields
.field private final arity:I

.field private final flags:I


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .param p1, "arity"    # I

    .line 40
    sget-object v2, Lccsankotlin/jvm/internal/FunctionReference;->NO_RECEIVER:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lccsankotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;

    .line 45
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lccsankotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "owner"    # Ljava/lang/Class;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 50
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lccsankotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    iput p1, p0, Lccsankotlin/jvm/internal/FunctionReference;->arity:I

    .line 52
    shr-int/lit8 v0, p6, 0x1

    iput v0, p0, Lccsankotlin/jvm/internal/FunctionReference;->flags:I

    .line 53
    return-void
.end method


# virtual methods
.method protected computeReflected()Lccsankotlin/reflect/KCallable;
    .locals 1

    .line 69
    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->function(Lccsankotlin/jvm/internal/FunctionReference;)Lccsankotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lccsankotlin/jvm/internal/FunctionReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 106
    move-object v1, p1

    check-cast v1, Lccsankotlin/jvm/internal/FunctionReference;

    .line 108
    .local v1, "other":Lccsankotlin/jvm/internal/FunctionReference;
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getOwner()Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v3

    invoke-virtual {v1}, Lccsankotlin/jvm/internal/FunctionReference;->getOwner()Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v4

    invoke-static {v3, v4}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsankotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsankotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lccsankotlin/jvm/internal/FunctionReference;->flags:I

    iget v4, v1, Lccsankotlin/jvm/internal/FunctionReference;->flags:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lccsankotlin/jvm/internal/FunctionReference;->arity:I

    iget v4, v1, Lccsankotlin/jvm/internal/FunctionReference;->arity:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lccsankotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 115
    .end local v1    # "other":Lccsankotlin/jvm/internal/FunctionReference;
    :cond_2
    instance-of v0, p1, Lccsankotlin/reflect/KFunction;

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->compute()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 118
    :cond_3
    return v2
.end method

.method public getArity()I
    .locals 1

    .line 57
    iget v0, p0, Lccsankotlin/jvm/internal/FunctionReference;->arity:I

    return v0
.end method

.method protected bridge synthetic getReflected()Lccsankotlin/reflect/KCallable;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lccsankotlin/reflect/KFunction;
    .locals 1

    .line 63
    invoke-super {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KFunction;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getOwner()Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getOwner()Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KFunction;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isInfix()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KFunction;->isInfix()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KFunction;->isInline()Z

    move-result v0

    return v0
.end method

.method public isOperator()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KFunction;->isOperator()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getReflected()Lccsankotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KFunction;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->compute()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    .line 129
    .local v0, "reflected":Lccsankotlin/reflect/KCallable;
    if-eq v0, p0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsankotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Kotlin reflection is not available)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
