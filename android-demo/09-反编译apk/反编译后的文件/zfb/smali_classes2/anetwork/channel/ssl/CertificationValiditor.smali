.class public Lanetwork/channel/ssl/CertificationValiditor;
.super Ljava/lang/Object;
.source "CertificationValiditor.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "m.taobao.com"

    sput-object v0, Lanetwork/channel/ssl/CertificationValiditor;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/security/cert/CertPath;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 251
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 253
    :try_start_0
    invoke-static {}, Lanetwork/channel/ssl/CertificationValiditor;->c()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    if-eqz v2, :cond_0

    .line 256
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 257
    new-instance v4, Ljava/security/cert/TrustAnchor;

    aget-object v5, v2, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 264
    const-string/jumbo v2, "ocsp.enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2

    .line 267
    invoke-virtual {v2, p0, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 269
    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_1
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v2, "ANet.CertificationValiditor"

    const-string/jumbo v3, "validateChain exception"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 277
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/security/cert/CertPath;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string/jumbo v1, "ANet.CertificationValiditor"

    const-string/jumbo v2, "Certificateion Validator error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-static {p0}, Lanetwork/channel/ssl/CertificationValiditor;->c([B)Ljava/util/List;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "Certificate failed:byteToCert Failed"

    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget-object v1, Lanetwork/channel/ssl/CertificationValiditor;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/util/List;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    const-string/jumbo v0, "Certificate failed:Domain Failed"

    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v2, "Certificate :Domain passed"

    invoke-static {v2}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    const-string/jumbo v0, "Certificate failed:Date Failed"

    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v1, "Certificate :Date passed"

    invoke-static {v1}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    const-string/jumbo v0, "Certificate failed:Cert Path Failed"

    invoke-static {v0}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Ljava/security/cert/X509Certificate;
    .locals 6

    .prologue
    .line 101
    const-class v1, Lanetwork/channel/ssl/CertificationValiditor;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ANet.CertificationValiditor"

    const-string/jumbo v2, "[getCertifications]"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-static {}, Lanetwork/channel/ssl/CertificationValiditor;->b()Ljava/io/File;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lanetwork/channel/util/FileUtil;->a(Ljava/io/File;)[B

    move-result-object v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-static {v2}, Lanetwork/channel/ssl/CertificationValiditor;->c([B)Ljava/util/List;

    move-result-object v0

    .line 107
    sget-object v2, Lanetwork/channel/ssl/CertificationValiditor;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lanetwork/channel/ssl/CertificationValiditor;->a(Ljava/util/List;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 111
    :goto_0
    monitor-exit v1

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    const-string/jumbo v3, "ANet.CertificationValiditor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getCertification error certs:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 131
    if-eqz p0, :cond_1

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 133
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :goto_1
    return-object v0

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 80
    :try_start_0
    const-string/jumbo v0, "ANet.CertificationValiditor"

    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0x105

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    .line 155
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 159
    :catch_0
    move-exception v1

    .line 161
    const-string/jumbo v2, "ANet.CertificationValiditor"

    const-string/jumbo v3, "CertificateExpiredException"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    .line 164
    const-string/jumbo v2, "ANet.CertificationValiditor"

    const-string/jumbo v3, "CertificateNotYetValidException"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Ljava/io/File;
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->b:Landroid/content/Context;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/CA.cert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string/jumbo v1, "ANet.CertificationValiditor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "context :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b([B)Z
    .locals 5

    .prologue
    .line 94
    const-class v1, Lanetwork/channel/ssl/CertificationValiditor;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lanetwork/channel/ssl/CertificationValiditor;->b()Ljava/io/File;

    move-result-object v0

    .line 95
    invoke-static {p0, v0}, Lanetwork/channel/util/FileUtil;->a([BLjava/io/File;)Z

    move-result v0

    .line 96
    const-string/jumbo v2, "ANet.CertificationValiditor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5199\u5165\u8bc1\u4e66:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v1

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 173
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 174
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 180
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 181
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_1
    return-object v0

    .line 189
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    move-object v0, v1

    .line 197
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    if-eqz v2, :cond_1

    .line 191
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_2

    .line 191
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 193
    :cond_2
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_5

    .line 189
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 185
    :catch_5
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static c()[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 229
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 232
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 233
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 234
    aget-object v3, v2, v0

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 235
    aget-object v0, v2, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 240
    :goto_1
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :goto_2
    return-object v0

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANet.CertificationValiditor"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 247
    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
