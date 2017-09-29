.class public Lorg/objectweb/asm/Label;
.super Ljava/lang/Object;


# static fields
.field static final DEBUG:I = 0x1

.field static final JSR:I = 0x80

.field static final PUSHED:I = 0x8

.field static final REACHABLE:I = 0x40

.field static final RESIZED:I = 0x4

.field static final RESOLVED:I = 0x2

.field static final RET:I = 0x100

.field static final STORE:I = 0x20

.field static final SUBROUTINE:I = 0x200

.field static final TARGET:I = 0x10

.field static final VISITED:I = 0x400

.field static final VISITED2:I = 0x800


# instance fields
.field private a:I

.field private b:[I

.field frame:Lorg/objectweb/asm/Frame;

.field public info:Ljava/lang/Object;

.field inputStackTop:I

.field line:I

.field next:Lorg/objectweb/asm/Label;

.field outputStackMax:I

.field position:I

.field status:I

.field successor:Lorg/objectweb/asm/Label;

.field successors:Lorg/objectweb/asm/Edge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/Label;->a:I

    iget-object v1, p0, Lorg/objectweb/asm/Label;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/objectweb/asm/Label;->b:[I

    iget-object v2, p0, Lorg/objectweb/asm/Label;->b:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Label;->a:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    iget v1, p0, Lorg/objectweb/asm/Label;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Label;->a:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method addToSubroutine(JI)V
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/objectweb/asm/Label;->status:I

    add-int/lit8 v0, p3, -0x1

    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/Label;->b:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aget v2, v0, v1

    long-to-int v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method getFirst()Lorg/objectweb/asm/Label;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object p0, v0, Lorg/objectweb/asm/Frame;->owner:Lorg/objectweb/asm/Label;

    goto :goto_0
.end method

.method public getOffset()I
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/Label;->position:I

    return v0
.end method

.method inSameSubroutine(Lorg/objectweb/asm/Label;)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/objectweb/asm/Label;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/Label;->b:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/objectweb/asm/Label;->b:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method inSubroutine(J)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/Label;->b:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    long-to-int v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    rsub-int/lit8 v0, p3, -0x1

    iget v1, p2, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/Label;->a(II)V

    invoke-virtual {p2, v2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    return-void

    :cond_0
    iget v0, p2, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Label;->a(II)V

    invoke-virtual {p2, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget v0, p0, Lorg/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method resolve(Lorg/objectweb/asm/MethodWriter;I[B)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/objectweb/asm/Label;->status:I

    iput p2, p0, Lorg/objectweb/asm/Label;->position:I

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/objectweb/asm/Label;->a:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/objectweb/asm/Label;->b:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v0

    iget-object v4, p0, Lorg/objectweb/asm/Label;->b:[I

    add-int/lit8 v0, v3, 0x1

    aget v3, v4, v3

    if-ltz v2, :cond_3

    sub-int v2, p2, v2

    const/16 v4, -0x8000

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7fff

    if-le v2, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xa8

    if-gt v1, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    :goto_1
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    aput-byte v1, p3, v4

    goto :goto_1

    :cond_3
    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visitSubroutine(Lorg/objectweb/asm/Label;JI)V
    .locals 4

    :goto_0
    if-eqz p0, :cond_5

    iget-object v1, p0, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_6

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/objectweb/asm/Label;->status:I

    iget v0, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/Label;->inSameSubroutine(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Edge;

    invoke-direct {v0}, Lorg/objectweb/asm/Edge;-><init>()V

    iget v2, p0, Lorg/objectweb/asm/Label;->inputStackTop:I

    iput v2, v0, Lorg/objectweb/asm/Edge;->info:I

    iget-object v2, p1, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iput-object v2, v0, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget-object v2, p0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iput-object v2, v0, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iput-object v0, p0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_4

    iget v2, p0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, v1, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget-object v2, v2, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iput-object v0, v2, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    iget-object v0, v1, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    :cond_2
    iget-object v1, v1, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/Label;->inSubroutine(J)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/Label;->addToSubroutine(JI)V

    goto :goto_1

    :cond_4
    move-object p0, v0

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    move-object p0, v1

    goto :goto_0
.end method
