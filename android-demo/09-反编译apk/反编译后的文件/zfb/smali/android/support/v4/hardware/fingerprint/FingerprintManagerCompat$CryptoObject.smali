.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/security/Signature;

.field private final b:Ljavax/crypto/Cipher;

.field private final c:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    return-object v0
.end method
