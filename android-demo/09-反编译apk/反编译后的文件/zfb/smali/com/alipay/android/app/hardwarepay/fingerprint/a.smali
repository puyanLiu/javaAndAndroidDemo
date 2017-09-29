.class final Lcom/alipay/android/app/hardwarepay/fingerprint/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;III)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    iput p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->d:I

    iput p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->b:Landroid/content/Context;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$002(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u94b1\u5305\u8bf7\u6c42\u6307\u7eb9\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$002(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v5

    iget v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->d:I

    iget v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->e:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createInitReplyJson(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    .line 146
    return-void
.end method
