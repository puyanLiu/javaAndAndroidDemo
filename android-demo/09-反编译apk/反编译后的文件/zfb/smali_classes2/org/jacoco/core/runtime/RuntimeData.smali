.class public Lorg/jacoco/core/runtime/RuntimeData;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field protected final store:Lorg/jacoco/core/data/ExecutionDataStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-direct {v0}, Lorg/jacoco/core/data/ExecutionDataStore;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    const-string/jumbo v0, "<none>"

    iput-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->a:J

    return-void
.end method

.method public static generateAccessCall(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V
    .locals 6

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jacoco/core/runtime/RuntimeData;->generateArgumentArray(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V

    const/16 v0, 0x5a

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string/jumbo v2, "java/lang/Object"

    const-string/jumbo v3, "equals"

    const-string/jumbo v4, "(Ljava/lang/Object;)Z"

    const/4 v5, 0x0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x57

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xc0

    const-string/jumbo v1, "[Z"

    invoke-virtual {p4, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public static generateArgumentArray(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V
    .locals 8

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const/16 v7, 0x59

    const/16 v6, 0x53

    const/4 v0, 0x6

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    const-string/jumbo v2, "java/lang/Object"

    invoke-virtual {p4, v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p4, v7}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string/jumbo v2, "java/lang/Long"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(J)Ljava/lang/Long;"

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p4, v7}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p4, p2}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-virtual {p4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p4, v7}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-static {p4, p3}, Lorg/jacoco/core/internal/instr/InstrSupport;->push(Lorg/objectweb/asm/MethodVisitor;I)V

    const-string/jumbo v2, "java/lang/Integer"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(I)Ljava/lang/Integer;"

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method


# virtual methods
.method public final collect(Lorg/jacoco/core/data/IExecutionDataVisitor;Lorg/jacoco/core/data/ISessionInfoVisitor;Z)V
    .locals 7

    iget-object v6, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    monitor-enter v6

    :try_start_0
    new-instance v0, Lorg/jacoco/core/data/SessionInfo;

    iget-object v1, p0, Lorg/jacoco/core/runtime/RuntimeData;->b:Ljava/lang/String;

    iget-wide v2, p0, Lorg/jacoco/core/runtime/RuntimeData;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/core/data/SessionInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p2, v0}, Lorg/jacoco/core/data/ISessionInfoVisitor;->visitSessionInfo(Lorg/jacoco/core/data/SessionInfo;)V

    iget-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/data/ExecutionDataStore;->accept(Lorg/jacoco/core/data/IExecutionDataVisitor;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/jacoco/core/runtime/RuntimeData;->reset()V

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/jacoco/core/runtime/RuntimeData;->getProbes([Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;
    .locals 2

    iget-object v1, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/core/data/ExecutionDataStore;->get(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProbes([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jacoco/core/runtime/RuntimeData;->getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v0

    aput-object v0, p1, v3

    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()V
    .locals 4

    iget-object v1, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->store:Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-virtual {v0}, Lorg/jacoco/core/data/ExecutionDataStore;->reset()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jacoco/core/runtime/RuntimeData;->a:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/runtime/RuntimeData;->b:Ljava/lang/String;

    return-void
.end method
