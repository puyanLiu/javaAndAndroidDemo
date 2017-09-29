.class final Lorg/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lorg/objectweb/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/Item;->index:I

    return-void
.end method

.method constructor <init>(ILorg/objectweb/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/Item;->index:I

    iget v0, p2, Lorg/objectweb/asm/Item;->type:I

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    iget v0, p2, Lorg/objectweb/asm/Item;->intVal:I

    iput v0, p0, Lorg/objectweb/asm/Item;->intVal:I

    iget-wide v0, p2, Lorg/objectweb/asm/Item;->longVal:J

    iput-wide v0, p0, Lorg/objectweb/asm/Item;->longVal:J

    iget-object v0, p2, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v0, p2, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v0, p2, Lorg/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget v0, p2, Lorg/objectweb/asm/Item;->hashCode:I

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method


# virtual methods
.method final isEqualTo(Lorg/objectweb/asm/Item;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/objectweb/asm/Item;->type:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-wide v2, p1, Lorg/objectweb/asm/Item;->longVal:J

    iget-wide v4, p0, Lorg/objectweb/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p1, Lorg/objectweb/asm/Item;->intVal:I

    iget v3, p0, Lorg/objectweb/asm/Item;->intVal:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p1, Lorg/objectweb/asm/Item;->intVal:I

    iget v3, p0, Lorg/objectweb/asm/Item;->intVal:I

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_5
    iget-wide v2, p1, Lorg/objectweb/asm/Item;->longVal:J

    iget-wide v4, p0, Lorg/objectweb/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_4
        0x10 -> :sswitch_0
        0x12 -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method final set(D)V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/objectweb/asm/Item;->longVal:J

    const v0, 0x7fffffff

    iget v1, p0, Lorg/objectweb/asm/Item;->type:I

    double-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method final set(F)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/Item;->intVal:I

    const v0, 0x7fffffff

    iget v1, p0, Lorg/objectweb/asm/Item;->type:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method final set(I)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    iput p1, p0, Lorg/objectweb/asm/Item;->intVal:I

    const v0, 0x7fffffff

    iget v1, p0, Lorg/objectweb/asm/Item;->type:I

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method final set(II)V
    .locals 1

    const/16 v0, 0x21

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    iput p1, p0, Lorg/objectweb/asm/Item;->intVal:I

    iput p2, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method final set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7fffffff

    iput p1, p0, Lorg/objectweb/asm/Item;->type:I

    iput-object p2, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method final set(J)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    iput-wide p1, p0, Lorg/objectweb/asm/Item;->longVal:J

    const v0, 0x7fffffff

    iget v1, p0, Lorg/objectweb/asm/Item;->type:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method final set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x12

    iput v0, p0, Lorg/objectweb/asm/Item;->type:I

    int-to-long v0, p3

    iput-wide v0, p0, Lorg/objectweb/asm/Item;->longVal:J

    iput-object p1, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    const v0, 0x7fffffff

    iget-object v1, p0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lorg/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x12

    and-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/Item;->hashCode:I

    return-void
.end method
