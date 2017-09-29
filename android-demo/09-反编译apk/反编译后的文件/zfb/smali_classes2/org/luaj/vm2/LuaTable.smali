.class public Lorg/luaj/vm2/LuaTable;
.super Lorg/luaj/vm2/LuaValue;

# interfaces
.implements Lorg/luaj/vm2/Metatable;


# static fields
.field private static final a:Lorg/luaj/vm2/LuaString;

.field private static final b:[Lorg/luaj/vm2/LuaTable$Slot;


# instance fields
.field protected array:[Lorg/luaj/vm2/LuaValue;

.field protected hash:[Lorg/luaj/vm2/LuaTable$Slot;

.field protected hashEntries:I

.field protected m_metatable:Lorg/luaj/vm2/Metatable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "n"

    invoke-static {v0}, Lorg/luaj/vm2/LuaTable;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/LuaTable;->a:Lorg/luaj/vm2/LuaString;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/luaj/vm2/LuaTable$Slot;

    sput-object v0, Lorg/luaj/vm2/LuaTable;->b:[Lorg/luaj/vm2/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    sget-object v0, Lorg/luaj/vm2/LuaTable;->NOVALS:[Lorg/luaj/vm2/LuaValue;

    iput-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    sget-object v0, Lorg/luaj/vm2/LuaTable;->b:[Lorg/luaj/vm2/LuaTable$Slot;

    iput-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->presize(II)V

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/Varargs;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/luaj/vm2/LuaTable;-><init>(Lorg/luaj/vm2/Varargs;I)V

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/Varargs;I)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/luaj/vm2/LuaTable;->presize(II)V

    sget-object v3, Lorg/luaj/vm2/LuaTable;->a:Lorg/luaj/vm2/LuaString;

    invoke-static {v2}, Lorg/luaj/vm2/LuaTable;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :goto_0
    if-gt v0, v2, :cond_0

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/luaj/vm2/LuaValue;[Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    move v2, v0

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    shr-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v0, v4}, Lorg/luaj/vm2/LuaTable;->presize(II)V

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget-object v5, p2, v0

    invoke-virtual {p0, v4, v5}, Lorg/luaj/vm2/LuaTable;->rawset(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p3}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v4

    :goto_4
    if-gt v0, v4, :cond_4

    add-int v5, v2, v0

    invoke-virtual {p3, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/luaj/vm2/LuaTable;->rawset(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v1, v3, :cond_6

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, p1, v1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v2}, Lorg/luaj/vm2/LuaTable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_6
    return-void
.end method

.method private a(Lorg/luaj/vm2/LuaValue;)I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lorg/luaj/vm2/LuaTable;->hashSlot(Lorg/luaj/vm2/LuaValue;I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    invoke-interface {v1, v2, v0}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 13

    const/16 v11, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakKeys()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/luaj/vm2/LuaTable$Slot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-interface {v3}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput v2, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaTable;->a()V

    :cond_4
    new-array v8, v11, [I

    move v7, v1

    move v2, v5

    move v0, v1

    :goto_2
    const/16 v3, 0x1f

    if-ge v7, v3, :cond_6

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v3, v3

    if-gt v2, v3, :cond_6

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v3, v3

    shl-int v4, v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v2

    move v2, v1

    :goto_3
    if-gt v3, v9, :cond_5

    iget-object v10, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v10, v3

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_3

    :cond_5
    aput v2, v8, v7

    add-int/2addr v2, v0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_4
    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v3, v3, v2

    :goto_5
    if-eqz v3, :cond_8

    const v4, 0x7fffffff

    invoke-interface {v3, v4}, Lorg/luaj/vm2/LuaTable$Slot;->arraykey(I)I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {v4}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v4

    aget v7, v8, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, v8, v4

    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-interface {v3}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v3

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    if-lez p1, :cond_a

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v2

    aget v3, v8, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v2

    :cond_a
    aget v2, v8, v1

    move v3, v5

    move v4, v2

    move v2, v1

    :goto_6
    if-ge v3, v11, :cond_c

    aget v7, v8, v3

    add-int/2addr v4, v7

    mul-int/lit8 v7, v0, 0x2

    shl-int v9, v5, v3

    if-lt v7, v9, :cond_c

    add-int/lit8 v7, v3, -0x1

    shl-int v7, v5, v7

    if-lt v4, v7, :cond_b

    shl-int v2, v5, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    iget-object v9, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    iget-object v10, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    if-lez p1, :cond_1d

    if-gt p1, v2, :cond_1d

    const/4 v0, -0x1

    :goto_7
    array-length v3, v9

    if-eq v2, v3, :cond_11

    new-array v3, v2, [Lorg/luaj/vm2/LuaValue;

    array-length v4, v9

    if-le v2, v4, :cond_d

    array-length v4, v9

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v4

    invoke-static {v2}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v7

    add-int/lit8 v11, v7, 0x1

    :goto_8
    if-ge v4, v11, :cond_e

    aget v7, v8, v4

    add-int/2addr v7, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v7

    goto :goto_8

    :cond_d
    array-length v4, v9

    if-le v4, v2, :cond_e

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v4

    array-length v7, v9

    invoke-static {v7}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v7

    add-int/lit8 v11, v7, 0x1

    :goto_9
    if-ge v4, v11, :cond_e

    aget v7, v8, v4

    sub-int v7, v0, v7

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v7

    goto :goto_9

    :cond_e
    array-length v4, v9

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a
    iget v4, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    sub-int v7, v4, v0

    if-ltz p1, :cond_f

    if-le p1, v2, :cond_12

    :cond_f
    move v4, v5

    :goto_b
    add-int/2addr v4, v7

    array-length v7, v10

    if-lez v4, :cond_14

    if-ge v4, v6, :cond_13

    move v4, v6

    :goto_c
    add-int/lit8 v5, v4, -0x1

    new-array v4, v4, [Lorg/luaj/vm2/LuaTable$Slot;

    move v12, v5

    move-object v5, v4

    move v4, v12

    :goto_d
    move v6, v1

    :goto_e
    if-ge v6, v7, :cond_17

    aget-object v1, v10, v6

    :goto_f
    if-eqz v1, :cond_16

    invoke-interface {v1, v2}, Lorg/luaj/vm2/LuaTable$Slot;->arraykey(I)I

    move-result v8

    if-lez v8, :cond_15

    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v11

    if-eqz v11, :cond_10

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v11}, Lorg/luaj/vm2/LuaTable$StrongSlot;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v11

    aput-object v11, v3, v8

    :cond_10
    :goto_10
    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v1

    goto :goto_f

    :cond_11
    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    goto :goto_a

    :cond_12
    move v4, v1

    goto :goto_b

    :cond_13
    invoke-static {v4}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v4

    shl-int v4, v5, v4

    goto :goto_c

    :cond_14
    sget-object v4, Lorg/luaj/vm2/LuaTable;->b:[Lorg/luaj/vm2/LuaTable$Slot;

    move-object v5, v4

    move v4, v1

    goto :goto_d

    :cond_15
    invoke-interface {v1, v4}, Lorg/luaj/vm2/LuaTable$Slot;->keyindex(I)I

    move-result v8

    aget-object v11, v5, v8

    invoke-interface {v1, v11}, Lorg/luaj/vm2/LuaTable$Slot;->relink(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v11

    aput-object v11, v5, v8

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_e

    :cond_17
    :goto_11
    array-length v1, v9

    if-ge v2, v1, :cond_1c

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v9, v2

    if-eqz v2, :cond_1b

    invoke-static {v1}, Lorg/luaj/vm2/LuaInteger;->hashCode(I)I

    move-result v6

    invoke-static {v6, v4}, Lorg/luaj/vm2/LuaTable;->hashmod(II)I

    move-result v6

    iget-object v7, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-static {v1}, Lorg/luaj/vm2/LuaTable;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/luaj/vm2/Metatable;->entry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v2

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_11

    :cond_18
    invoke-static {v1}, Lorg/luaj/vm2/LuaTable;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/luaj/vm2/LuaTable;->defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v2

    :cond_19
    aget-object v7, v5, v6

    if-eqz v7, :cond_1a

    aget-object v7, v5, v6

    invoke-interface {v7, v2}, Lorg/luaj/vm2/LuaTable$Slot;->add(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v2

    :cond_1a
    aput-object v2, v5, v6

    :cond_1b
    move v2, v1

    goto :goto_11

    :cond_1c
    iput-object v5, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    iput-object v3, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    iget v1, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    sub-int v0, v1, v0

    iput v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    return-void

    :cond_1d
    move v0, v1

    goto/16 :goto_7

    :cond_1e
    move v3, v4

    goto/16 :goto_3
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aput-object v0, v1, p2

    return-void
.end method

.method private a(IILorg/luaj/vm2/LuaValue;)V
    .locals 2

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    if-gt v0, p2, :cond_1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1, p3}, Lorg/luaj/vm2/LuaTable;->b(IILorg/luaj/vm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lorg/luaj/vm2/LuaTable;->b(IILorg/luaj/vm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/luaj/vm2/LuaTable;->a(II)V

    move p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILorg/luaj/vm2/LuaValue;)Z
    .locals 3

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    aput-object p2, v0, v1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v2, p2}, Lorg/luaj/vm2/Metatable;->wrap(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(IILorg/luaj/vm2/LuaValue;)Z
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v1, v0, p1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    invoke-interface {v0, v1, p1}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    invoke-interface {v0, v2, p2}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3, v1, v0}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaValue;->lt_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    goto :goto_1
.end method

.method protected static defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaTable$IntKeyEntry;

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/luaj/vm2/LuaTable$IntKeyEntry;-><init>(ILorg/luaj/vm2/LuaValue;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/luaj/vm2/LuaTable$NumberValueEntry;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/luaj/vm2/LuaTable$NumberValueEntry;-><init>(Lorg/luaj/vm2/LuaValue;D)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/luaj/vm2/LuaTable$NormalEntry;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/LuaTable$NormalEntry;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method public static hashSlot(Lorg/luaj/vm2/LuaValue;I)I
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lorg/luaj/vm2/LuaTable;->hashpow2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lorg/luaj/vm2/LuaTable;->hashmod(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static hashmod(II)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    rem-int/2addr v0, p1

    return v0
.end method

.method public static hashpow2(II)I
    .locals 1

    and-int v0, p0, p1

    return v0
.end method

.method protected static isLargeKey(Lorg/luaj/vm2/LuaValue;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->rawlen()I

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static log2(I)I
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v2, p0, -0x1

    if-gez v2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    const v3, 0xff00

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v2, v2, 0x8

    :cond_1
    and-int/lit16 v3, v2, 0xf0

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v2, v2, 0x4

    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_7
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_8
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_9
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_a
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_b
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_c
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_d
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_e
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_f
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    aget-object v0, p1, p2

    return-object v0
.end method

.method public checktable()Lorg/luaj/vm2/LuaTable;
    .locals 0

    return-object p0
.end method

.method public concat(Lorg/luaj/vm2/LuaString;II)Lorg/luaj/vm2/LuaValue;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/Buffer;

    invoke-direct {v0}, Lorg/luaj/vm2/Buffer;-><init>()V

    if-gt p2, p3, :cond_0

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p3, :cond_0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/luaj/vm2/Buffer;->tostring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public entry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-static {p1, p2}, Lorg/luaj/vm2/LuaTable;->defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public eq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->eq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaTable;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaTable;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public eq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->istable()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->getmetatable()Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v3}, Lorg/luaj/vm2/Metatable;->toLuaValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-static {p0, v3, p1, v2}, Lorg/luaj/vm2/LuaValue;->eqmtcall(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public get(I)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/luaj/vm2/LuaTable;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/luaj/vm2/LuaTable;->gettable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lorg/luaj/vm2/LuaTable;->gettable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getArrayLength()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    return v0
.end method

.method protected getHashLength()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v0, v0

    return v0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->toLuaValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hashget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaTable;->a(Lorg/luaj/vm2/LuaValue;)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$Slot;->find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$StrongSlot;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1
.end method

.method public hashset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaTable;->a(Lorg/luaj/vm2/LuaValue;)I

    move-result v1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/luaj/vm2/LuaTable$Slot;->find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lorg/luaj/vm2/LuaTable$Slot;->remove(Lorg/luaj/vm2/LuaTable$StrongSlot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaTable;->a(Lorg/luaj/vm2/LuaValue;)I

    move-result v0

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v2, v2, v0

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Lorg/luaj/vm2/LuaTable$Slot;->find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v2, v2, v0

    invoke-interface {v2, v3, p2}, Lorg/luaj/vm2/LuaTable$Slot;->set(Lorg/luaj/vm2/LuaTable$StrongSlot;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v2

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    iget v2, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v3, v3

    if-lt v2, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/LuaTable;->a(I)V

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/luaj/vm2/LuaTable;->a(ILorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_3
    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaTable;->a(Lorg/luaj/vm2/LuaValue;)I

    move-result v0

    :cond_7
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v1, p1, p2}, Lorg/luaj/vm2/Metatable;->entry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v1

    :goto_4
    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v3, v3, v0

    invoke-interface {v3, v1}, Lorg/luaj/vm2/LuaTable$Slot;->add(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v1

    :cond_8
    aput-object v1, v2, v0

    iget v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    goto :goto_1

    :cond_9
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/luaj/vm2/LuaTable;->a(I)V

    goto :goto_3

    :cond_a
    invoke-static {p1, p2}, Lorg/luaj/vm2/LuaTable;->defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v1

    goto :goto_4
.end method

.method public inext(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaTable;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaTable;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILorg/luaj/vm2/LuaValue;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v0

    add-int/lit8 p1, v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->rawset(ILorg/luaj/vm2/LuaValue;)V

    move-object p2, v0

    move p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public istable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyCount()I
    .locals 3

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/luaj/vm2/LuaTable;->next(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public keys()[Lorg/luaj/vm2/LuaValue;
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->next(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public len()Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 5

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->getArrayLength()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->getHashLength()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_1

    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public next(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v2, v2

    if-le v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v0, v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "invalid key to \'next\'"

    invoke-static {v0}, Lorg/luaj/vm2/LuaTable;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaTable;->a(Lorg/luaj/vm2/LuaValue;)I

    move-result v2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v0, v0, v2

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/luaj/vm2/LuaTable$StrongSlot;->toVarargs()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v1, p1}, Lorg/luaj/vm2/LuaTable$Slot;->keyeq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string/jumbo v0, "invalid key to \'next\'"

    invoke-static {v0}, Lorg/luaj/vm2/LuaTable;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_5
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    aget-object v1, v1, v0

    :goto_3
    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaTable;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    invoke-interface {v1, v2, v0}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_4
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    aget-object v1, v1, v0

    :goto_5
    if-eqz v1, :cond_b

    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->first()Lorg/luaj/vm2/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lorg/luaj/vm2/LuaTable$StrongSlot;->toVarargs()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-interface {v1}, Lorg/luaj/vm2/LuaTable$Slot;->rest()Lorg/luaj/vm2/LuaTable$Slot;

    move-result-object v1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :cond_d
    move v0, v1

    goto :goto_2
.end method

.method public opttable(Lorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;
    .locals 0

    return-object p0
.end method

.method public presize(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v2

    shl-int/2addr v1, v2

    new-array v1, v1, [Lorg/luaj/vm2/LuaValue;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-void
.end method

.method public presize(II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lez p2, :cond_0

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {p1}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v0

    shl-int v0, v1, v0

    new-array v0, v0, [Lorg/luaj/vm2/LuaValue;

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    if-lez p2, :cond_2

    invoke-static {p2}, Lorg/luaj/vm2/LuaTable;->log2(I)I

    move-result v0

    shl-int v0, v1, v0

    new-array v0, v0, [Lorg/luaj/vm2/LuaTable$Slot;

    :goto_1
    iput-object v0, p0, Lorg/luaj/vm2/LuaTable;->hash:[Lorg/luaj/vm2/LuaTable$Slot;

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/LuaTable;->hashEntries:I

    return-void

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NOVALS:[Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/luaj/vm2/LuaTable;->b:[Lorg/luaj/vm2/LuaTable$Slot;

    goto :goto_1
.end method

.method public rawget(I)Lorg/luaj/vm2/LuaValue;
    .locals 3

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v1, v2}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->hashget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1
.end method

.method public rawget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v2, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v2, v0}, Lorg/luaj/vm2/Metatable;->arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->hashget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1
.end method

.method public rawlen()I
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public rawset(ILorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->a(ILorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/luaj/vm2/LuaTable;->hashset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_0
    return-void
.end method

.method public rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/luaj/vm2/LuaTable;->a(ILorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->hashset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_1
    return-void
.end method

.method public remove(I)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v0

    if-nez p1, :cond_1

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/LuaTable;->rawset(ILorg/luaj/vm2/LuaValue;)V

    move p1, v2

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_0

    sget-object v1, Lorg/luaj/vm2/LuaTable;->NONE:Lorg/luaj/vm2/LuaValue;

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/luaj/vm2/LuaTable;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_1
.end method

.method public set(ILorg/luaj/vm2/LuaValue;)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/luaj/vm2/LuaTable;->settable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->rawset(ILorg/luaj/vm2/LuaValue;)V

    :cond_1
    return-void
.end method

.method public set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isvalidkey()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaTable;->NEWINDEX:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->metatag(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "table index"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaTable;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->rawget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->settable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/LuaTable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_2
    return-void
.end method

.method public setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v3}, Lorg/luaj/vm2/Metatable;->useWeakValues()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-static {p1}, Lorg/luaj/vm2/LuaTable;->metatableOf(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Metatable;

    move-result-object v4

    iput-object v4, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    iget-object v4, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v4}, Lorg/luaj/vm2/Metatable;->useWeakKeys()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    if-eq v3, v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lorg/luaj/vm2/LuaTable;->a(I)V

    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public sort(Lorg/luaj/vm2/LuaValue;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->m_metatable:Lorg/luaj/vm2/Metatable;

    invoke-interface {v0}, Lorg/luaj/vm2/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaTable;->a()V

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaTable;->array:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v1, v0, :cond_3

    div-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v0, v2, p1}, Lorg/luaj/vm2/LuaTable;->a(IILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-lez v0, :cond_3

    invoke-direct {p0, v0, v3}, Lorg/luaj/vm2/LuaTable;->a(II)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v3, v0, p1}, Lorg/luaj/vm2/LuaTable;->a(IILorg/luaj/vm2/LuaValue;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public toLuaValue()Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "table"

    return-object v0
.end method

.method public unpack()Lorg/luaj/vm2/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/LuaTable;->unpack(II)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public unpack(I)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/LuaTable;->unpack(II)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public unpack(II)Lorg/luaj/vm2/Varargs;
    .locals 3

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    if-gez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaTable;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/luaj/vm2/LuaTable;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaTable;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/luaj/vm2/LuaTable;->varargsOf([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public useWeakKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p1
.end method
