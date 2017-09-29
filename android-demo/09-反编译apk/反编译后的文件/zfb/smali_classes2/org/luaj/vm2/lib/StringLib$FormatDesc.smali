.class Lorg/luaj/vm2/lib/StringLib$FormatDesc;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field public final conversion:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field public final length:I


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;I)V
    .locals 9

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v5

    move v3, v4

    move v2, v1

    move v0, p3

    :goto_0
    if-eqz v3, :cond_1

    if-ge v0, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    move v3, v1

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    goto :goto_1

    :sswitch_0
    iput-boolean v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->a:Z

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :sswitch_1
    iput-boolean v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->c:Z

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :sswitch_2
    iput-boolean v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->d:Z

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :sswitch_3
    iput-boolean v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->e:Z

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :sswitch_4
    iput-boolean v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->b:Z

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :cond_1
    sub-int v3, v0, p3

    const/4 v6, 0x5

    if-le v3, v6, :cond_2

    const-string/jumbo v3, "invalid format (repeated flags)"

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    iput v7, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v2, v2, -0x30

    iput v2, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    if-ge v0, v5, :cond_7

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    :goto_2
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v3

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    if-ge v2, v5, :cond_8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    move v2, v3

    :cond_3
    :goto_3
    iput v7, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    if-ge v2, v5, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    move v2, v3

    :goto_4
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    if-ge v2, v5, :cond_a

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    move v2, v3

    :goto_5
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v3

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    if-ge v2, v5, :cond_b

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    move v2, v3

    :cond_4
    :goto_6
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "invalid format (width or precision too long)"

    invoke-static {v3}, Lorg/luaj/vm2/LuaValue;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_5
    iget-boolean v3, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->b:Z

    iget-boolean v5, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->a:Z

    if-nez v5, :cond_6

    move v1, v4

    :cond_6
    and-int/2addr v1, v3

    iput-boolean v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->b:Z

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->conversion:I

    sub-int v0, v2, p3

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->length:I

    return-void

    :cond_7
    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x23 -> :sswitch_3
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x30 -> :sswitch_4
    .end sparse-switch
.end method

.method static access$000(Lorg/luaj/vm2/lib/StringLib$FormatDesc;)I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    return v0
.end method

.method public static final pad(Lorg/luaj/vm2/Buffer;CI)V
    .locals 2

    int-to-byte v1, p1

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public format(Lorg/luaj/vm2/Buffer;B)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    return-void
.end method

.method public format(Lorg/luaj/vm2/Buffer;D)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    return-void
.end method

.method public format(Lorg/luaj/vm2/Buffer;J)V
    .locals 9

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/16 v5, 0x20

    cmp-long v0, p2, v6

    if-nez v0, :cond_6

    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    cmp-long v1, p2, v6

    if-gez v1, :cond_7

    add-int/lit8 v1, v2, -0x1

    :goto_1
    iget v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    if-le v4, v1, :cond_9

    iget v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    sub-int v1, v4, v1

    :goto_2
    add-int/2addr v2, v1

    iget v4, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    if-le v4, v2, :cond_1

    iget v3, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    sub-int/2addr v3, v2

    :cond_1
    iget-boolean v2, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->a:Z

    if-nez v2, :cond_2

    invoke-static {p1, v5, v3}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->pad(Lorg/luaj/vm2/Buffer;CI)V

    :cond_2
    cmp-long v2, p2, v6

    if-gez v2, :cond_b

    if-lez v1, :cond_3

    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    if-lez v1, :cond_4

    const/16 v2, 0x30

    invoke-static {p1, v2, v1}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->pad(Lorg/luaj/vm2/Buffer;CI)V

    :cond_4
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    iget-boolean v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->a:Z

    if-eqz v0, :cond_5

    invoke-static {p1, v5, v3}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->pad(Lorg/luaj/vm2/Buffer;CI)V

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->conversion:I

    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0xa

    :goto_4
    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->conversion:I

    const/16 v2, 0x58

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x10

    goto :goto_4

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_4

    :cond_7
    iget-boolean v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->c:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->d:Z

    if-eqz v1, :cond_d

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :cond_9
    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->g:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_a

    iget-boolean v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->b:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    if-le v1, v2, :cond_a

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->f:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_2

    :cond_b
    iget-boolean v2, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->c:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x2b

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_3

    :cond_c
    iget-boolean v2, p0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1, v5}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_3

    :cond_d
    move v1, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x6f -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public format(Lorg/luaj/vm2/Buffer;Lorg/luaj/vm2/LuaString;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2}, Lorg/luaj/vm2/LuaString;->indexOf(BI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, v2, v0}, Lorg/luaj/vm2/LuaString;->substring(II)Lorg/luaj/vm2/LuaString;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    return-void
.end method
