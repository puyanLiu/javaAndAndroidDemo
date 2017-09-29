.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6

    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    :goto_0
    move-object v2, p3

    check-cast v2, Landroid/os/CancellationSignal;

    new-instance v4, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;

    invoke-direct {v4, p4}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method
