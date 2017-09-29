.class final Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->a:I

    iput p4, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->b:I

    iput p2, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->c:I

    iput p3, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->d:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->e:I

    return-void
.end method


# virtual methods
.method final getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->a:I

    return v0
.end method

.method final getErrorCorrectionLevel()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->b:I

    return v0
.end method

.method final getRowCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->e:I

    return v0
.end method

.method final getRowCountLowerPart()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->d:I

    return v0
.end method

.method final getRowCountUpperPart()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->c:I

    return v0
.end method
