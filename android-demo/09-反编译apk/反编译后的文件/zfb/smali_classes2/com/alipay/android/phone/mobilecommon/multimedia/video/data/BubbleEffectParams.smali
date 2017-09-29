.class public Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;
.super Ljava/lang/Object;


# static fields
.field public static final BUBBLE_TYPE_LEFT:I = 0x1

.field public static final BUBBLE_TYPE_NONE:I = 0x0

.field public static final BUBBLE_TYPE_RIGHT:I = 0x2


# instance fields
.field public mBubbleShape:Landroid/graphics/Bitmap;

.field public mBubbleType:I

.field public mRoundRadius:I

.field public mTriangleOffset:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mRoundRadius:I

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mTriangleOffset:I

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mBubbleType:I

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mRoundRadius:I

    iput p2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mTriangleOffset:I

    iput p3, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mBubbleType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BubbleEffectParams{mRoundRadius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mRoundRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTriangleOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mTriangleOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBubbleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mBubbleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBubbleShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;->mBubbleShape:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
