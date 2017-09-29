.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Certs;
.super Ljava/lang/Object;
.source "Certs.java"


# static fields
.field public static serverPublicKeyString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiZHDD4cZ77/sVrYUM2/Za73IBgk6QqR2zQEmBkT+iFxZye8S6t0t83eqDfKVYAgq13U8lp/WYtjkqKIStgF4KlWCT3ZNkQCiQraOMPC2XFpcPbOwk7nLBqrAKV8Owkojyr4V8WSYrfrVh+1yWwPstLZE/hw1D4mqpfAxKrAkzEKlQY6d65GyDvPbjiUb9XI1qUGikROhTXTko0pspoPvyXEmi6mBWHP+8SEgNWKALX+zUL9qhQs4DKmk1ZdxJDz9bncBA9sanVuj+hWtWnjNTVOt7YEgSo0iPf24jmoTQdvp4qgoeFzxal6DGbQN9fj+J5CvvSWmiYSxudzlngA4JwIDAQAB"

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Certs;->serverPublicKeyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
