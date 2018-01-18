.class public interface abstract Lcom/samsung/android/app/watchmanager/plugin/libinterface/sim/MultiSimManagerInterface;
.super Ljava/lang/Object;
.source "MultiSimManagerInterface.java"


# virtual methods
.method public abstract SIMSLOT1()I
.end method

.method public abstract SIMSLOT1(Landroid/telephony/SubscriptionManager;I)I
.end method

.method public abstract SIMSLOT2()I
.end method

.method public abstract SIMSLOT2(Landroid/telephony/SubscriptionManager;I)I
.end method

.method public abstract TYPE_DATA()I
.end method

.method public abstract TYPE_DEFAULT()I
.end method

.method public abstract TYPE_SMS()I
.end method

.method public abstract TYPE_VOICE()I
.end method

.method public abstract getCallState(I)I
.end method

.method public abstract getCallState(Landroid/telephony/TelephonyManager;I)I
.end method

.method public abstract getCurrentPhoneType(I)I
.end method

.method public abstract getCurrentPhoneType(Landroid/telephony/TelephonyManager;I)I
.end method

.method public abstract getDataState(Landroid/telephony/TelephonyManager;I)I
.end method

.method public abstract getDefaultSubscriptionId(I)I
.end method

.method public abstract getInsertedSimNum(Landroid/telephony/SubscriptionManager;)I
.end method

.method public abstract getLine1Number(I)Ljava/lang/String;
.end method

.method public abstract getLine1Number(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator(Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;
.end method

.method public abstract getSimSlotCount(Landroid/telephony/TelephonyManager;)I
.end method

.method public abstract getSimState(Landroid/telephony/TelephonyManager;I)I
.end method

.method public abstract getSlotId(I)I
.end method

.method public abstract getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
.end method

.method public abstract getSubscriptionId(Landroid/telephony/SubscriptionManager;I)[I
.end method

.method public abstract getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
.end method

.method public abstract getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
.end method

.method public abstract getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasIccCard(Landroid/telephony/TelephonyManager;I)Z
.end method

.method public abstract isMultiSimSlot(Landroid/telephony/TelephonyManager;)Z
.end method

.method public abstract isNetworkRoaming(I)Z
.end method

.method public abstract isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z
.end method
