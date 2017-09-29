.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int p1, v1, v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->d:I

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v1, v0

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int v2, v1, v0

    shl-int/lit8 v3, v1, 0x1

    if-gez v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->b:I

    invoke-static {v4, v5, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->b:I

    invoke-static {v4, v6, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iput v6, p0, Landroid/support/v4/util/CircularArray;->b:I

    iput v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->d:I

    return-void
.end method


# virtual methods
.method public final addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->a()V

    :cond_0
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->a()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    return-object v0
.end method

.method public final popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    return-object v1
.end method

.method public final removeFromEnd(I)V
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ge p1, v1, :cond_3

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int/2addr v0, p1

    :cond_3
    move v1, v0

    :goto_1
    iget v2, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int v0, v1, v0

    sub-int v1, p1, v0

    iget v2, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-lez v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int v1, v0, v1

    move v0, v1

    :goto_2
    iget v2, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    goto :goto_0
.end method

.method public final removeFromStart(I)V
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_3

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v0, p1

    :cond_3
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    iget v2, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    goto :goto_0
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    return v0
.end method
