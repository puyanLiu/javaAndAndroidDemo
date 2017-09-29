.class public final Lorg/luaj/vm2/Buffer;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:Lorg/luaj/vm2/LuaValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/luaj/vm2/Buffer;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/luaj/vm2/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iput v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    iput v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/luaj/vm2/Buffer;->a:[B

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/Buffer;->d:I

    iput v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    iput-object p1, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method private final a(II)V
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    array-length v0, v0

    if-eq p1, v0, :cond_0

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v2, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v3, p0, Lorg/luaj/vm2/Buffer;->c:I

    invoke-static {v1, v2, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iput p2, p0, Lorg/luaj/vm2/Buffer;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final append(B)Lorg/luaj/vm2/Buffer;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/Buffer;->makeroom(II)V

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v2, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->lengthAsUtf8([C)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/luaj/vm2/Buffer;->makeroom(II)V

    array-length v2, v0

    iget-object v3, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v4, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v5, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lorg/luaj/vm2/LuaString;->encodeToUtf8([CI[BI)I

    iget v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    return-object p0
.end method

.method public final append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {p0, v4, v0}, Lorg/luaj/vm2/Buffer;->makeroom(II)V

    iget-object v1, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v2, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v3, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v4, v1, v2, v0}, Lorg/luaj/vm2/LuaString;->copyInto(I[BII)V

    iget v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    return-object p0
.end method

.method public final append(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    return-object p0
.end method

.method public final concatTo(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaNumber;->concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Buffer;->setvalue(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaNumber;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Buffer;->prepend(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaString;->concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Buffer;->setvalue(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Buffer;->prepend(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final concatTo(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Buffer;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Buffer;->setvalue(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final makeroom(II)V
    .locals 5

    const/16 v0, 0x20

    iget-object v1, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    iget v1, v0, Lorg/luaj/vm2/LuaString;->m_length:I

    iput v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    iput p1, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget-object v1, v0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v0, v0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget-object v2, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v3, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v4, p0, Lorg/luaj/vm2/Buffer;->c:I

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v2, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/luaj/vm2/Buffer;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_2

    iget v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    if-ge v1, p1, :cond_0

    :cond_2
    iget v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    if-ge v1, v0, :cond_4

    move v1, v0

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v1, v0}, Lorg/luaj/vm2/Buffer;->a(II)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_3

    iget v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    mul-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    sub-int v0, v1, v0

    sub-int/2addr v0, p2

    goto :goto_2
.end method

.method public final prepend(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;
    .locals 5

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/Buffer;->makeroom(II)V

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget-object v3, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v4, p0, Lorg/luaj/vm2/Buffer;->d:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v1, p0, Lorg/luaj/vm2/Buffer;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    return-object p0
.end method

.method public final setvalue(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Buffer;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/Buffer;->a:[B

    iput-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    iput v0, p0, Lorg/luaj/vm2/Buffer;->d:I

    iput-object p1, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/Buffer;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tostring()Lorg/luaj/vm2/LuaString;
    .locals 3

    iget v0, p0, Lorg/luaj/vm2/Buffer;->c:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/Buffer;->a(II)V

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->b:[B

    iget v1, p0, Lorg/luaj/vm2/Buffer;->d:I

    iget v2, p0, Lorg/luaj/vm2/Buffer;->c:I

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public final value()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Buffer;->e:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Buffer;->tostring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0
.end method
