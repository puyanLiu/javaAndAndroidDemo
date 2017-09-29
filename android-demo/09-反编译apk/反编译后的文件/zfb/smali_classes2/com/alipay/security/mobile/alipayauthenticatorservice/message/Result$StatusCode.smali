.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result$StatusCode;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final STATUS_INPUTTING:I = 0x2

.field public static final STATUS_INPUT_COMPLETED:I = 0x3

.field public static final STATUS_WAITING_FOR_INPUT:I = 0x1

.field public static final USER_STATUS_IDX_REMOVE:I = 0x1

.field public static final USER_STATUS_NOT_REGISTER:I = 0x0

.field public static final USER_STATUS_REGISTER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result$StatusCode;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
