.class public Lorg/luaj/vm2/LuaDouble;
.super Lorg/luaj/vm2/LuaNumber;


# static fields
.field public static final JSTR_NAN:Ljava/lang/String; = "nan"

.field public static final JSTR_NEGINF:Ljava/lang/String; = "-inf"

.field public static final JSTR_POSINF:Ljava/lang/String; = "inf"

.field public static final NAN:Lorg/luaj/vm2/LuaDouble;

.field public static final NEGINF:Lorg/luaj/vm2/LuaDouble;

.field public static final POSINF:Lorg/luaj/vm2/LuaDouble;


# instance fields
.field final v:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/luaj/vm2/LuaDouble;

    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaDouble;-><init>(D)V

    sput-object v0, Lorg/luaj/vm2/LuaDouble;->NAN:Lorg/luaj/vm2/LuaDouble;

    new-instance v0, Lorg/luaj/vm2/LuaDouble;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaDouble;-><init>(D)V

    sput-object v0, Lorg/luaj/vm2/LuaDouble;->POSINF:Lorg/luaj/vm2/LuaDouble;

    new-instance v0, Lorg/luaj/vm2/LuaDouble;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaDouble;-><init>(D)V

    sput-object v0, Lorg/luaj/vm2/LuaDouble;->NEGINF:Lorg/luaj/vm2/LuaDouble;

    return-void
.end method

.method private constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaNumber;-><init>()V

    iput-wide p1, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    return-void
.end method

.method public static ddiv(DD)Lorg/luaj/vm2/LuaValue;
    .locals 3

    const-wide/16 v1, 0x0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    cmpl-double v0, p0, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->POSINF:Lorg/luaj/vm2/LuaDouble;

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, v1

    if-nez v0, :cond_2

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->NAN:Lorg/luaj/vm2/LuaDouble;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->NEGINF:Lorg/luaj/vm2/LuaDouble;

    goto :goto_0
.end method

.method public static ddiv_d(DD)D
    .locals 3

    const-wide/16 v1, 0x0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    cmpl-double v0, p0, v1

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, v1

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    :cond_2
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public static dmod(DD)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->NAN:Lorg/luaj/vm2/LuaDouble;

    goto :goto_0
.end method

.method public static dmod_d(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public static valueOf(D)Lorg/luaj/vm2/LuaNumber;
    .locals 3

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/luaj/vm2/LuaDouble;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/LuaDouble;-><init>(D)V

    goto :goto_0
.end method


# virtual methods
.method public add(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->add(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public checkdouble()D
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    return-wide v0
.end method

.method public checkint()I
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public checkinteger()Lorg/luaj/vm2/LuaInteger;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public checknumber()Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public checkstring()Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public div(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public div(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public div(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->divInto(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public divInto(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public eq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->raweq(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public eq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->raweq(D)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/luaj/vm2/LuaDouble;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/luaj/vm2/LuaDouble;

    iget-wide v1, p1, Lorg/luaj/vm2/LuaDouble;->v:D

    iget-wide v3, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public gt(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gt(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gt(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->lt_b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gt_b(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gt_b(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gt_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->lt_b(D)Z

    move-result v0

    return v0
.end method

.method public gteq(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v0, v0, p1

    if-ltz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gteq(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gteq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->lteq_b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gteq_b(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gteq_b(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gteq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->lteq_b(D)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    add-int/2addr v0, v2

    return v0
.end method

.method public islong()Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    iget-wide v2, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v2, v2

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isnumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lt(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lt(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lt(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->gt_b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lt_b(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lt_b(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lt_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->gt_b(D)Z

    move-result v0

    return v0
.end method

.method public lteq(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lteq(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaDouble;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lteq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->gteq_b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaDouble;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lteq_b(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lteq_b(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lteq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->gteq_b(D)Z

    move-result v0

    return v0
.end method

.method public mod(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mod(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->modFrom(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public modFrom(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mul(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public mul(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->mul(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public neg()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    return-wide v0
.end method

.method public optint(I)I
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public optinteger(Lorg/luaj/vm2/LuaInteger;)Lorg/luaj/vm2/LuaInteger;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optlong(J)J
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public optnumber(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public optstring(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public pow(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->powWith(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public powWith(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public powWith(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public raweq(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public raweq(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public raweq(Lorg/luaj/vm2/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->raweq(D)Z

    move-result v0

    return v0
.end method

.method public strcmp(Lorg/luaj/vm2/LuaString;)I
    .locals 1

    const-string/jumbo v0, "attempt to compare number with string"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaDouble;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public strvalue()Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public sub(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public sub(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->subFrom(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public subFrom(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public tobyte()B
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    return-wide v0
.end method

.method public tofloat()F
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-float v0, v0

    return v0
.end method

.method public toint()I
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-double v2, v0

    iget-wide v4, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nan"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const-string/jumbo v0, "-inf"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "inf"

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public tolong()J
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public tonumber()Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p0
.end method

.method public toshort()S
    .locals 2

    iget-wide v0, p0, Lorg/luaj/vm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method
