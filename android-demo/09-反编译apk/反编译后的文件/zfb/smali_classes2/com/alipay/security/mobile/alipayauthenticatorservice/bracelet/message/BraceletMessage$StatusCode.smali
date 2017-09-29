.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/message/BraceletMessage$StatusCode;
.super Ljava/lang/Object;
.source "BraceletMessage.java"


# static fields
.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final STATUS_AUTH_FINISH:I = 0x7

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_DISCONNECTED:I = 0x0

.field public static final STATUS_FAILED:I = -0x1

.field public static final STATUS_FINISH:I = 0x6

.field public static final STATUS_INPUT_COMPLETED:I = 0x5

.field public static final STATUS_WAITING_AUTH:I = 0x3

.field public static final STATUS_WAITING_CONFIRM:I = 0x4

.field public static final STATUS_WAITING_CONNECTED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/message/BraceletMessage;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/message/BraceletMessage;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/message/BraceletMessage$StatusCode;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/message/BraceletMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
