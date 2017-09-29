.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptionalData()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->c:[I

    return-object v0
.end method

.method public final getSegmentIndex()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a:I

    return v0
.end method

.method public final isLastSegment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->d:Z

    return v0
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public final setLastSegment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->d:Z

    return-void
.end method

.method public final setOptionalData([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->c:[I

    return-void
.end method

.method public final setSegmentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a:I

    return-void
.end method
