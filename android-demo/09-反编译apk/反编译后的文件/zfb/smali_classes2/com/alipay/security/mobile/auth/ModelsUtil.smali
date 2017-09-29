.class public Lcom/alipay/security/mobile/auth/ModelsUtil;
.super Ljava/lang/Object;
.source "ModelsUtil.java"


# static fields
.field private static modes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "HUAWEI-Z100"

    const-string/jumbo v2, "huaweiold_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "HUAWEI-PLK100"

    const-string/jumbo v2, "huawei_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "HUAWEI-RI100"

    const-string/jumbo v2, "huawei_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "YUNOS-CM810"

    const-string/jumbo v2, "yunos_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "YUNOS-B50"

    const-string/jumbo v2, "yunos_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "YUNOS-I966"

    const-string/jumbo v2, "yunos_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "OPPO-N5207"

    const-string/jumbo v2, "oppo_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "MEIZU-M76"

    const-string/jumbo v2, "meizu_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "MEIZU-M85"

    const-string/jumbo v2, "meizu_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "HTC-HTC-0PK71"

    const-string/jumbo v2, "htc_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "HTC-htc_hima_ace_ml"

    const-string/jumbo v2, "htc_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "VIVO-Xplay5"

    const-string/jumbo v2, "vivo_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "LENOVO-MTK"

    const-string/jumbo v2, "lenovo_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "GiONEE-GN9008"

    const-string/jumbo v2, "gionee_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "Coolpad-T2"

    const-string/jumbo v2, "coolpad_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "Coolpad-8692"

    const-string/jumbo v2, "coolpad_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "ZTE-A2015"

    const-string/jumbo v2, "zte_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "ShenQi-Z1221"

    const-string/jumbo v2, "fancymaker_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "OnePlus-ONE-A2001"

    const-string/jumbo v2, "oneplus_VALUES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "huaweiold_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authentication.huawei\",\"vendor\":\"2\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "huawei_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"2\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_huawei.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "yunos_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"3\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_yunos.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "oppo_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"4\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_oppo.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "meizu_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"5\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_meizu.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "htc_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"6\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_htc.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "vivo_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"7\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_vivo.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "lenovo_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"8\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_lenovo.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "gionee_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"9\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_gionee.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "xiaomi_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"10\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_xiaomi.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "coolpad_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"11\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_yulong.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "letv_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"12\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_letv.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "zte_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"13\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_zte.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "fancymaker_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"14\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_fancymaker.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    const-string/jumbo v1, "oneplus_VALUES"

    const-string/jumbo v2, "{\"packageName\":\"com.alipay.security.mobile.authenticator\",\"vendor\":\"15\",\"protocalType\":\"2\",\"protocolVersion\":\"1\",\"serviceUrl\":\"http://tfs.alipayobjects.com/L1/71/900/androidSec/Alipaysec_fingerprint_oneplus.apk\"}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/alipay/security/mobile/auth/ModelsUtil;->modes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
