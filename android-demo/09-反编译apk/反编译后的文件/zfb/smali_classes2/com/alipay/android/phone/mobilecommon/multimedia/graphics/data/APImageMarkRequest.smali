.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;
.super Ljava/lang/Object;


# static fields
.field public static final PERCENT_MAX:I = 0x64

.field public static final PERCENT_MIN:I = 0x1

.field public static final POS_CENTER_BOTTOM:I = 0x8

.field public static final POS_CENTER_CENTER:I = 0x5

.field public static final POS_CENTER_TOP:I = 0x2

.field public static final POS_LEFT_BOTTOM:I = 0x7

.field public static final POS_LEFT_CENTER:I = 0x4

.field public static final POS_LEFT_TOP:I = 0x1

.field public static final POS_RIGHT_BOTTOM:I = 0x9

.field public static final POS_RIGHT_CENTER:I = 0x6

.field public static final POS_RIGHT_TOP:I = 0x3

.field public static final TRANSPARENCY_MAX:I = 0x64

.field public static final TRANSPARENCY_MIN:I = 0x1


# instance fields
.field private markHeight:Ljava/lang/Integer;

.field private markId:Ljava/lang/String;

.field private markWidth:Ljava/lang/Integer;

.field private paddingX:Ljava/lang/Integer;

.field private paddingY:Ljava/lang/Integer;

.field private percent:Ljava/lang/Integer;

.field private position:Ljava/lang/Integer;

.field private transparency:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$0(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markId:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$1(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->position:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$2(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->transparency:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$3(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markWidth:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$4(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markHeight:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$5(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingX:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$6(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingY:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;->access$7(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->percent:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getMarkHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaddingX()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingX:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaddingY()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingY:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPercent()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->percent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransparency()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->transparency:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APImageMarkRequest{markId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "transparency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->transparency:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "markWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "markHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->markHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "paddingX=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "paddingY=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->paddingY:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "percent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageMarkRequest;->percent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
