.class public Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;
.super Ljava/lang/Exception;
.source "MyRpcInvokeException.java"


# static fields
.field public static final Network_Error:I = 0x1

.field public static final Rpc_DateTime_Error:I = 0x5

.field public static final Rpc_Exception:I = 0x2

.field public static final Rpc_Result_Null:I = 0x3

.field public static final Rpc_Service_Null:I = 0x4


# instance fields
.field private bizCode:Ljava/lang/String;

.field private errorCode:I

.field private errorStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getRpcExceptionMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->errorCode:I

    .line 32
    iput-object p2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->errorStr:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(ILjava/lang/String;)V

    .line 37
    iput-object p3, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->bizCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static getRpcExceptionMsg(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v0, ""

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v1

    const-string/jumbo v2, "android-phone-wallet-o2ocommon"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget v0, Lcom/alipay/android/phone/o2o/o2ocommon/R$string;->rpc_broken_network:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_1
    sget v0, Lcom/alipay/android/phone/o2o/o2ocommon/R$string;->rpc_weak_network:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_2
    sget v0, Lcom/alipay/android/phone/o2o/o2ocommon/R$string;->rpc_error_datetime:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBizCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->errorCode:I

    return v0
.end method

.method public getErrorStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->errorStr:Ljava/lang/String;

    return-object v0
.end method
