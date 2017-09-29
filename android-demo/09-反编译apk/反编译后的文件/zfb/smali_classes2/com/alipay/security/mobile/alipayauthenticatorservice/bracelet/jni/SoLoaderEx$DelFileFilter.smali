.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;
.super Ljava/lang/Object;
.source "SoLoaderEx.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field condition:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    .line 261
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/SoLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
