.class public Lcom/alipay/security/mobile/auth/AuthenticatorFactory;
.super Ljava/lang/Object;
.source "AuthenticatorFactory.java"


# static fields
.field public static TYPE_BRACELET:I

.field public static TYPE_FINGERPRINT:I

.field private static modelName:Ljava/lang/String;

.field private static samsungFPModle:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sput v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    .line 39
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_BRACELET:I

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SM-G900"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SM-T805C"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SM-T800N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SM-T705C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "SM-T700N"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SM-G8508S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SM-N91"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SM-G920"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SM-G925"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SM-A8000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SM-G928"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->samsungFPModle:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alipayFingerprintSolution(Landroid/content/Context;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 143
    new-instance v6, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v6}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->supportSamsungAsm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_SAMSUNG_V2:I

    sget v2, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY:I

    const/4 v3, 0x2

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://authentication.information"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 155
    if-nez v3, :cond_1

    move-object v0, v6

    .line 156
    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    const-string/jumbo v0, "fingerprint"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    const-string/jumbo v1, "protocalType"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 164
    const-string/jumbo v1, "protocalVersion"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 165
    const-string/jumbo v1, "vendor"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 166
    if-eq v0, v7, :cond_2

    if-eq v4, v7, :cond_2

    if-eq v2, v7, :cond_2

    if-ne v1, v7, :cond_3

    .line 168
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 169
    goto :goto_0

    .line 173
    :cond_3
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v6

    .line 179
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    sget v1, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    if-ne p1, v1, :cond_3

    .line 56
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->getDeviceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->isSupportSamSungFP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;-><init>()V

    .line 95
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/ModelsUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->alipayFingerprintSolution(Landroid/content/Context;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/ModelsUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    goto :goto_0

    .line 79
    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALTYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALVERSION:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 84
    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->SERVICEURL:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    goto :goto_0

    .line 94
    :cond_3
    sget v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_BRACELET:I

    if-ne p1, v0, :cond_4

    .line 95
    new-instance v0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;

    invoke-direct {v0}, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;-><init>()V

    goto :goto_0

    .line 97
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDeviceMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 111
    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://authentication.information"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const-string/jumbo v1, "model"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 124
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    if-eqz v1, :cond_3

    .line 132
    const-string/jumbo v0, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isHuaweiModel(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "huawei-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSamSungFP(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v2, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->samsungFPModle:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 102
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 103
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static supportSamsungAsm(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    :try_start_0
    const-string/jumbo v2, "com.sec.android.fido.uaf.asm"

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 191
    const-string/jumbo v2, "com.alipay.security.mobile.authenticator"

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 198
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
