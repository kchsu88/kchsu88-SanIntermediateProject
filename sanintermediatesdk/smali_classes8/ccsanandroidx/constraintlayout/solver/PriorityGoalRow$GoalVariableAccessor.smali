.class Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

.field final synthetic this$0:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

.field variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;
    .param p2, "row"    # Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    .line 39
    iput-object p1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->row:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4
    .param p1, "other"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 83
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    .line 84
    .local v1, "value":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 85
    iget-object v2, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 81
    .end local v1    # "value":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addToGoal(Lccsanandroidx/constraintlayout/solver/SolverVariable;F)Z
    .locals 8
    .param p1, "other"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .line 48
    iget-object v0, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v0, v0, Lccsanandroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "empty":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 51
    iget-object v5, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v6, v5, v4

    iget-object v7, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v7, v7, v4

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 52
    iget-object v5, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v5, v5, v4

    .line 53
    .local v5, "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_0

    .line 54
    iget-object v6, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v6, v4

    goto :goto_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 50
    .end local v5    # "v":F
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    iget-object v2, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    invoke-static {v1, v2}, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;->access$000(Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;Lccsanandroidx/constraintlayout/solver/SolverVariable;)V

    .line 62
    .end local v0    # "empty":Z
    :cond_2
    nop

    .line 77
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_6

    .line 64
    iget-object v4, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v4, v4, v0

    .line 65
    .local v4, "strength":F
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_5

    .line 66
    mul-float v5, p2, v4

    .line 67
    .restart local v5    # "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_4

    .line 68
    const/4 v5, 0x0

    .line 70
    :cond_4
    iget-object v6, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v5, v6, v0

    .line 71
    .end local v5    # "v":F
    goto :goto_3

    .line 72
    :cond_5
    iget-object v5, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v5, v0

    .line 63
    .end local v4    # "strength":F
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    move-object v0, p1

    check-cast v0, Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 131
    .local v0, "v":Lccsanandroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, v0, Lccsanandroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public init(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0
    .param p1, "variable"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 44
    iput-object p1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 45
    return-void
.end method

.method public final isNegative()Z
    .locals 5

    .line 91
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 92
    iget-object v2, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 93
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 94
    return v1

    .line 96
    :cond_0
    cmpg-float v1, v2, v3

    if-gez v1, :cond_1

    .line 97
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v2    # "value":F
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public final isNull()Z
    .locals 3

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x0

    return v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Lccsanandroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 5
    .param p1, "other"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 104
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 105
    iget-object v2, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 106
    .local v2, "comparedValue":F
    iget-object v3, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    .line 107
    .local v3, "value":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_0

    .line 108
    nop

    .line 104
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    .restart local v2    # "comparedValue":F
    .restart local v3    # "value":F
    :cond_0
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_1
    return v1

    .line 116
    .end local v0    # "i":I
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 2

    .line 135
    iget-object v0, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v0, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 139
    const-string v0, "[ "

    .line 140
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Lccsanandroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Lccsanandroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method
