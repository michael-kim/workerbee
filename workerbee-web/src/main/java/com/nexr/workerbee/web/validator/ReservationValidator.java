package com.nexr.workerbee.web.validator;

import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.nexr.workerbee.model.Reservation;

@Component
public class ReservationValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Reservation.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","required.name","Court name is required.");
		ValidationUtils.rejectIfEmpty(errors, "date", "error.field.required");
		ValidationUtils.rejectIfEmpty(errors, "hour", "required.hour", "Hour is required.");
		
		Reservation reservation = (Reservation)target;
		Date date = reservation.getDate();
		int hour = reservation.getHour();
		String name = reservation.getName();
		
		if (name!=null&&name.length()<3){
			errors.rejectValue("name","invalid.tooShortName","name is too short");
		}
		if (date !=null){
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(date);
			if (calendar.get(Calendar.DAY_OF_WEEK)==Calendar.SUNDAY){
				errors.rejectValue("date","invalid.holidayHour","Invilid holiday hour.");
			}
			
		} else{
			errors.reject("invalid.nulldate","Date is null");
		}

	}

}
