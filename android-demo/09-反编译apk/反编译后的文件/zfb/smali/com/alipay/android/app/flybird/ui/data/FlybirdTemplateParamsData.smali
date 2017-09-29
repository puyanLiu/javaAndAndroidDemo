.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "QUICKPAY@cashier-pre-confirm"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a:[Ljava/lang/String;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "A1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "A2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a:[Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->b:[Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
