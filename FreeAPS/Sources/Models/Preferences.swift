import Foundation

struct Preferences: JSON {
    var maxIOB: Decimal = 9
    var maxDailySafetyMultiplier: Decimal = 7
    var currentBasalSafetyMultiplier: Decimal = 8
    var enableAutosens = false
    var autosensMax: Decimal = 1.3
    var autosensMin: Decimal = 0.7
    var smbDeliveryRatio: Decimal = 0.9
    var rewindResetsAutosens: Bool = true
    var highTemptargetRaisesSensitivity: Bool = false
    var lowTemptargetLowersSensitivity: Bool = false
    var sensitivityRaisesTarget: Bool = false
    var resistanceLowersTarget: Bool = false
    var advTargetAdjustments: Bool = false
    var exerciseMode: Bool = true
    var halfBasalExerciseTarget: Decimal = 160
    var maxCOB: Decimal = 120
    var wideBGTargetRange: Bool = false
    var skipNeutralTemps: Bool = false
    var unsuspendIfNoTemp: Bool = false
    var min5mCarbimpact: Decimal = 8
    var autotuneISFAdjustmentFraction: Decimal = 1.0
    var remainingCarbsFraction: Decimal = 1.0
    var remainingCarbsCap: Decimal = 90
    var enableUAM: Bool = true
    var a52RiskEnable: Bool = false
    var enableSMBWithCOB: Bool = true
    var enableSMBWithTemptarget: Bool = true
    var enableSMBAlways: Bool = true
    var enableSMB_high_bg: Bool = false
    var enableSMB_high_bg_target: Decimal = 110
    var enableSMBAfterCarbs: Bool = true
    var allowSMBWithHighTemptarget: Bool = false
    var maxSMBBasalMinutes: Decimal = 120
    var maxUAMSMBBasalMinutes: Decimal = 120
    var smbInterval: Decimal = 2
    var bolusIncrement: Decimal = 0.05
    var curve: InsulinCurve = .rapidActing
    var useCustomPeakTime: Bool = false
    var insulinPeakTime: Decimal = 75
    var carbsReqThreshold: Decimal = 1.0
    var noisyCGMTargetMultiplier: Decimal = 1.3
    var suspendZerosIOB: Bool = false
    var timestamp: Date?
    // var maxDeltaBGthreshold: Decimal = 0.2
    // start dynISF config for oref variables
    var adjustmentFactor: Decimal = 0.8
    var adjustmentFactorSigmoid: Decimal = 0.5
    var sigmoid: Bool = false
    var enableDynamicCR: Bool = false
    var useNewFormula: Bool = false
    var useWeightedAverage: Bool = false
    var weightPercentage: Decimal = 0.65
    var tddAdjBasal: Bool = false
    var threshold_setting: Decimal = 65
    var updateInterval: Decimal = 20
    // start autoISF config
    var floatingcarbs: Bool = false
    var autoisf: Bool = true
    var autoISFmax: Decimal = 2
    var autoISFmin: Decimal = 0.5
    var smbMaxRangeExtension: Decimal = 2
    var smbThresholdRatio: Decimal = 0.5
    var smbDeliveryRatioBGrange: Decimal = 90
    var smbDeliveryRatioMin: Decimal = 0.65
    var smbDeliveryRatioMax: Decimal = 0.80
    var enableautoISFwithCOB: Bool = true
    var autoISFhourlyChange: Decimal = 0.6
    var higherISFrangeWeight: Decimal = 0.3
    var lowerISFrangeWeight: Decimal = 0.7
    var deltaISFrangeWeight: Decimal = 0.6
    var postMealISFalways: Bool = true
    var postMealISFweight: Decimal = 0.02
    var postMealISFduration: Decimal = 3
    var enableBGacceleration: Bool = true
    var bgAccelISFweight: Decimal = 0.1
    var bgBrakeISFweight: Decimal = 0.15
    var iobThresholdPercent: Decimal = 100
    var enableSMBEvenOnOddOff: Bool = true
    var enableSMBEvenOnOddOffalways: Bool = true
    var autoISFoffSport: Bool = true
    // start B30 config
    var enableB30: Bool = true
    var B30iTimeStartBolus: Decimal = 1.5
    var B30iTime: Decimal = 30
    var B30iTimeTarget: Decimal = 90
    var B30upperLimit: Decimal = 130
    var B30upperDelta: Decimal = 8
    var B30basalFactor: Decimal = 7
    // start keto protect
    var ketoProtect: Bool = false
    var variableKetoProtect: Bool = false
    var ketoProtectBasalPercent: Decimal = 20
    var ketoProtectAbsolut: Bool = false
    var ketoProtectBasalAbsolut: Decimal = 0
}

extension Preferences {
    private enum CodingKeys: String, CodingKey {
        case maxIOB = "max_iob"
        case maxDailySafetyMultiplier = "max_daily_safety_multiplier"
        case currentBasalSafetyMultiplier = "current_basal_safety_multiplier"
        case enableAutosens = "enable_autosens"
        case autosensMax = "autosens_max"
        case autosensMin = "autosens_min"
        case smbDeliveryRatio = "smb_delivery_ratio"
        case rewindResetsAutosens = "rewind_resets_autosens"
        case highTemptargetRaisesSensitivity = "high_temptarget_raises_sensitivity"
        case lowTemptargetLowersSensitivity = "low_temptarget_lowers_sensitivity"
        case sensitivityRaisesTarget = "sensitivity_raises_target"
        case resistanceLowersTarget = "resistance_lowers_target"
        case advTargetAdjustments = "adv_target_adjustments"
        case exerciseMode = "exercise_mode"
        case halfBasalExerciseTarget = "half_basal_exercise_target"
        case maxCOB
        case wideBGTargetRange = "wide_bg_target_range"
        case skipNeutralTemps = "skip_neutral_temps"
        case unsuspendIfNoTemp = "unsuspend_if_no_temp"
        case min5mCarbimpact = "min_5m_carbimpact"
        case autotuneISFAdjustmentFraction = "autotune_isf_adjustmentFraction"
        case remainingCarbsFraction
        case remainingCarbsCap
        case enableUAM
        case a52RiskEnable = "A52_risk_enable"
        case enableSMBWithCOB = "enableSMB_with_COB"
        case enableSMBWithTemptarget = "enableSMB_with_temptarget"
        case enableSMBAlways = "enableSMB_always"
        case enableSMBAfterCarbs = "enableSMB_after_carbs"
        case allowSMBWithHighTemptarget = "allowSMB_with_high_temptarget"
        case maxSMBBasalMinutes
        case maxUAMSMBBasalMinutes
        case smbInterval = "SMBInterval"
        case bolusIncrement = "bolus_increment"
        case curve
        case useCustomPeakTime
        case insulinPeakTime
        case carbsReqThreshold
        case noisyCGMTargetMultiplier
        case suspendZerosIOB = "suspend_zeros_iob"
        case smbDeliveryRatioBGrange = "smb_delivery_ratio_bg_range"
        // case maxDeltaBGthreshold = "maxDelta_bg_threshold"
        // start dynISF config for oref variables
        case adjustmentFactor
        case adjustmentFactorSigmoid
        case sigmoid
        case enableDynamicCR
        case useNewFormula
        case useWeightedAverage
        case weightPercentage
        case tddAdjBasal
        case enableSMB_high_bg
        case enableSMB_high_bg_target
        case threshold_setting
        case updateInterval
        // start autoISF config for oref variables
        case autoisf = "use_autoisf"
        case autoISFhourlyChange = "dura_ISF_weight"
        case autoISFmax = "autoISF_max"
        case autoISFmin = "autoISF_min"
        case smbMaxRangeExtension = "smb_max_range_extension"
        case floatingcarbs = "floating_carbs"
        case iobThresholdPercent = "iob_threshold_percent"
        case enableSMBEvenOnOddOff = "enableSMB_EvenOn_OddOff"
        case enableSMBEvenOnOddOffalways = "enableSMB_EvenOn_OddOff_always"
        case smbDeliveryRatioMin = "smb_delivery_ratio_min"
        case smbDeliveryRatioMax = "smb_delivery_ratio_max"
        case smbThresholdRatio = "smb_threshold_ratio"
        case enableautoISFwithCOB = "enableautoisf_with_COB"
        case higherISFrangeWeight = "higher_ISFrange_weight"
        case lowerISFrangeWeight = "lower_ISFrange_weight"
        case deltaISFrangeWeight = "delta_ISFrange_weight"
        case postMealISFweight = "pp_ISF_weight"
        case postMealISFduration = "pp_ISF_hours"
        case postMealISFalways = "enable_pp_ISF_always"
        case bgAccelISFweight = "bgAccel_ISF_weight"
        case bgBrakeISFweight = "bgBrake_ISF_weight"
        case enableBGacceleration = "enable_BG_acceleration"
        case autoISFoffSport = "autoISF_off_Sport"
        // start B30 config
        case enableB30 = "use_B30"
        case B30iTimeStartBolus = "iTime_Start_Bolus"
        case B30iTime = "b30_duration"
        case B30iTimeTarget = "iTime_target"
        case B30upperLimit = "b30_upperBG"
        case B30upperDelta = "b30_upperdelta"
        case B30basalFactor = "b30_factor"
        // start keto protect
        case ketoProtect = "keto_protect"
        case variableKetoProtect = "variable_keto_protect_strategy"
        case ketoProtectBasalPercent = "keto_protect_basal_percent"
        case ketoProtectAbsolut = "keto_protect_absolute"
        case ketoProtectBasalAbsolut = "keto_protect_basal_absolute"
    }
}

enum InsulinCurve: String, JSON, Identifiable, CaseIterable {
    case rapidActing = "rapid-acting"
    case ultraRapid = "ultra-rapid"
    case bilinear

    var id: InsulinCurve { self }
}
