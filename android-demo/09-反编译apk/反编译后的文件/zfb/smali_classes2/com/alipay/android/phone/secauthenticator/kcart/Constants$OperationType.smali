.class public final enum Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

.field public static final enum OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

.field public static final enum OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    const-string/jumbo v1, "OPERATION_TYPE_ADD"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    const-string/jumbo v1, "OPERATION_TYPE_MAX"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->$VALUES:[Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->$VALUES:[Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    return-object v0
.end method
