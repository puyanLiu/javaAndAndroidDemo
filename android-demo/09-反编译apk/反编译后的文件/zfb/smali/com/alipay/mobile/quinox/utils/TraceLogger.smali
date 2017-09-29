.class public Lcom/alipay/mobile/quinox/utils/TraceLogger;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->setLogger(Lcom/alipay/android/phone/thirdparty/common/log/Logger;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 182
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 154
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method
