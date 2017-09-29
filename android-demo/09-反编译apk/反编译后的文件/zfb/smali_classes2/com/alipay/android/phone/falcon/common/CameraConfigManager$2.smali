.class Lcom/alipay/android/phone/falcon/common/CameraConfigManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/falcon/common/CameraConfigManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/falcon/common/CameraConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$2;->this$0:Lcom/alipay/android/phone/falcon/common/CameraConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 3

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$2;->compare(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method
